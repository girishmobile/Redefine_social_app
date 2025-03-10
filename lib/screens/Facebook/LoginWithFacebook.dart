import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_term_condition.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class LoginWithFacebook extends StatefulWidget {
  const LoginWithFacebook({super.key});

  @override
  State<LoginWithFacebook> createState() => _LoginWithFacebookState();
}

class _LoginWithFacebookState extends State<LoginWithFacebook> {
  var isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AppScaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            children: [_loginWithFacebookView(size: size, context: context)],
          ),
        ),
      ),
    );
  }

  _loginWithFacebookView({required Size size, required BuildContext context}) {
    return Form(
      child: Column(
        spacing: columnSpacing,
        children: [
          AppProfileImage(
            imageUrl: dummyImageUrl,
          ),
          SizedBox(
            height: 16,
          ),
          AppTextWidget(
              text: loginWithFacebookText,
              style: Theme.of(context).textTheme.headlineMedium),
          AppTextFieldWidget(
            hintText: emailText,
          ),
          AppTextFieldWidget(
            hintText: passwordText,
            obscureText: isShowPassword,
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
          AppTermCondition(),
          AppButtonWidget(
            top: 5,
            text: connectWitFacebook,
            width: size.width,
            btnStyle: commonButtonStyle(context: context),
            textStyle: Theme.of(context).textTheme.labelMedium,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
