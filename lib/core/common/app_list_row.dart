import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_image_view.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppListRow extends StatelessWidget {
  const AppListRow({
    super.key,
    this.text,
    this.backgroundColor,
    this.width,
    this.height,
    this.ischekcbox,
    this.selectedItem = false,
    this.onChanged,
  });
  final String? text;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final bool? ischekcbox;
  final bool? selectedItem;
  final void Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.all(containerPadding),
        color: backgroundColor ?? colorHeader,
        child: Row(
          spacing: 10,
          children: [
            Column(
              children: [
                AppTextWidget(
                  text: '#1',
                  style: textTheme.headlineMedium,
                ),
                AppTextWidget(
                  text: '[Day]',
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: colorOrange, borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text('dawdkashkdh'),
                        Text('dawdkashkdh'),
                        Text('dawdkashkdh')
                      ],
                    ),
                    AppImageView()
                  ],
                ),
              ),
            ),
            ischekcbox == true
                ? Checkbox(
                    value: selectedItem,
                    onChanged: onChanged,
                    visualDensity: VisualDensity(horizontal: -4),
                  )
                : SizedBox.shrink()
          ],
        ));
  }
}
