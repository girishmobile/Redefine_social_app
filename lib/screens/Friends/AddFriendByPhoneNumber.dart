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
    // Cache the screen width and theme for better performance
    final screenWidth = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: const AppAppbar(
        titleName: 'Add friend by Phone Number',
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                // Remove unnecessary shrinkWrap as it's inside Expanded
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.all(containerPadding),
                children: [
                  AppTextWidget(
                    text: 'Add a friend',
                    style: theme.textTheme.headlineMedium,
                  ),
                  const AppTextWidget(
                    top: columSpacing,
                    bottom: columSpacing,
                    text:
                        'Please enter the name and phone number of the person you would like to add.',
                  ),
                  const AppTextFieldWidget(
                    hintText: 'Name',
                  ),
                  const SizedBox(
                    height: columSpacing,
                  ),
                  const AppTextFieldWidget(
                    hintText: 'Phone number',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: containerPadding),
              child: AppButtonWidget(
                text: 'ADD',
                width: screenWidth,
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
