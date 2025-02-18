import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_divider_widget.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  bool isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AppScaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [_forgotPasswordView(size: size, context: context)],
          ),
        ),
      ),
    );
  }

  Widget _forgotPasswordView(
      {required Size size, required BuildContext context}) {
    return Form(
      child: Container(
        margin: const EdgeInsets.all(containerMargin),
        width: size.width,
        padding: EdgeInsets.all(containerPadding),
        child: Column(
          spacing: 16,
          children: [
            Icon(Icons.lock, size: 100, color: Theme.of(context).primaryColor),
            AppTextWidget(
              text: troubleLoginText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            AppTextWidget(
              text: enterEmailText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 8,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isEmailSelected = true;
                            });
                          },
                          child: AppTextWidget(
                            text: emailText,
                            textAlign: TextAlign.start,
                            left: 5,
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              isEmailSelected = false;
                            });
                          },
                          child: AppTextWidget(
                            text: phoneText,
                            textAlign: TextAlign.end,
                            right: 5,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 8,
                          color: isEmailSelected
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 8,
                          color: isEmailSelected
                              ? Colors.grey
                              : Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            AppTextFieldWidget(
              hintText: emailText,
            ),
            AppButtonWidget(
              text: sendloginText,
              onPressed: () {},
              width: size.width,
              buttonStyle: commonButtonStyle(context: context),
              textStyle: Theme.of(context).textTheme.labelMedium,
            ),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: AppTextWidget(
                text: needmoreHelpText,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Row(
              children: [
                AppDividerWidget(),
                AppTextWidget(
                  text: orText,
                  style: commonTextStyle(
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).colorScheme.primary),
                ),
                AppDividerWidget(),
              ],
            ),
            AppButtonWidget(
              top: 20,
              icon: Icon(
                Icons.facebook_outlined,
                size: 24,
                color: Colors.blue,
              ),
              text: sendLoginwithFacebook,
              onPressed: () {
                Navigator.pushNamed(context, RouteName.facebookScreen);
              },
              width: size.width,
              buttonStyle: commonButtonStyle(
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              textStyle: commonTextStyle(
                  color: Colors.blue, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
