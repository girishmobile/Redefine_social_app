import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_divider_widget.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<LoginView> {
  var isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: SafeArea(
        child: Container(
          width: size.width,
          height: size.height,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: ListView(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    children: [_loginView(size: size, context: context)],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppTextWidget(
                      text: dontHaveAccountText,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.signupScreen);
                      },
                      child: AppTextWidget(
                        text: signUpText,
                        style: commonTextStyle(fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _loginView({required Size size, required BuildContext context}) {
    return Form(
      child: Container(
        margin: const EdgeInsets.all(containerMargin),
        width: size.width,
        padding: EdgeInsets.all(containerPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: columSpacing,
          children: [
            loadAssetImage(name: applogo, width: size.width * zero5),
            AppTextWidget(
                text: welcomeText,
                style: Theme.of(context).textTheme.bodyLarge),
            AppTextFieldWidget(
              hintText: emailText,
            ),
            AppTextFieldWidget(
              obscureText: isShowPassword,
              hintText: passwordText,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: isShowPassword
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
            ),
            AppButtonWidget(
              top: 10,
              text: loginText,
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, RouteName.dashboard,
                    (Route<dynamic> route) => false);
              },
              width: size.width,
              btnStyle: commonButtonStyle(context: context),
              textStyle: Theme.of(context).textTheme.labelMedium,
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.forgotPasswordScreen);
              },
              child: AppTextWidget(
                text: forgotPasswordText,
                size: size,
                textAlign: TextAlign.end,
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
              icon: Icon(
                Icons.facebook_outlined,
                size: 24,
                color: Colors.blue,
              ),
              text: loginWithFacebookText,
              onPressed: () {
                Navigator.pushNamed(context, RouteName.facebookScreen);
              },
              width: size.width,
              btnStyle: commonButtonStyle(
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.primary,
              ),
              textStyle: commonTextStyle(
                  color: Colors.blue, fontWeight: FontWeight.w600),
            ),
            AppButtonWidget(
              icon: loadAssetImage(name: googleIcon, width: 20),
              text: loginWithGoogleText,
              onPressed: () {
                Navigator.pushNamed(context, RouteName.googleScreen);
              },
              width: size.width,
              btnStyle: commonButtonStyle(
                backgroundColor: Theme.of(context).colorScheme.surface,
                foregroundColor: Theme.of(context).colorScheme.primary,
                borderColor: Theme.of(context).colorScheme.primary,
              ),
              textStyle: commonTextStyle(
                  context: context, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
/**
 */
