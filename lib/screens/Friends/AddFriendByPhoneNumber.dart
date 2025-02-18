import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AddFriendByPhoneNumber extends StatelessWidget {
  const AddFriendByPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        titleName: 'Add friend by Phone Number',
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                padding: EdgeInsets.all(containerPadding),
                children: [
                  AppTextWidget(
                    text: 'Add a friend',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  AppTextWidget(
                    top: columSpacing,
                    bottom: columSpacing,
                    text:
                        'Please enter the name and phone number of the person you would like to add.',
                  ),
                  AppTextFieldWidget(
                    hintText: 'Name',
                  ),
                  SizedBox(
                    height: columSpacing,
                  ),
                  AppTextFieldWidget(
                    hintText: 'Phone number',
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: containerPadding),
              child: AppButtonWidget(
                text: 'ADD',
                width: MediaQuery.of(context).size.width,
                onPressed: () {},
                bottom: columSpacing,
                buttonStyle: commonButtonStyle(context: context),
              ),
            )
          ],
        ),
      ),
    );
  }
}
