import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            spacing: columnSpacing,
            children: [
              AppTextWidget(
                text:
                    'This is the detail page of  event detail page of the year',
              ),
              commonHeaderWithIcon(
                  'MAIN EVENT IMAGE', Icons.photo_album_outlined, themeText),
              Container(
                height: 150,
                width: size.width,
                decoration: commonBoxDecoration1(
                  colorBorder: colorGold,
                  borderWidth: 2,
                  radius: 4,
                ),
                child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: AppTextWidget(
                          text: 'Choose image',
                          style: themeText.headlineMedium,
                        ))),
              ),
              commonHeaderWithIcon('DESCRIPTION', Icons.info, themeText),
              AppTextFieldWidget(
                hintText: 'Summary',
              ),
              AppTextFieldWidget(
                hintText: 'Add text (if wanted)',
                maxLine: 5,
              ),
              AppTextFieldWidget(
                hintText: 'Video link (if wanted)',
              ),
              AppButtonWidget(
                onPressed: onPressed,
                text: 'Save & Continue',
                btnStyle: commonButtonStyle(
                    context: context, backgroundColor: Colors.red),
              )
            ],
          ),
        ),
      ),
    );
  }
}
