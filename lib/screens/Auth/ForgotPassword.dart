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
  final _formKey = GlobalKey<FormState>();

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
      key: _formKey,
      child: Container(
        margin: const EdgeInsets.all(containerMargin),
        width: size.width,
        padding: const EdgeInsets.all(containerPadding),
        child: Column(
          spacing: 16,
          children: [
            const Icon(Icons.lock, size: 100),
            AppTextWidget(
              text: troubleLoginText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            AppTextWidget(
              text: enterEmailText,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 8,
                children: [
                  _buildToggleRow(),
                  _buildIndicatorRow(context),
                ],
              ),
            ),
            AppTextFieldWidget(
              hintText: emailText,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter ${isEmailSelected ? 'email' : 'phone'}';
                }
                return null;
              },
            ),
            AppButtonWidget(
              text: sendloginText,
              onPressed: _handleSubmit,
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

  Widget _buildToggleRow() {
    return Row(
      children: [
        Expanded(
          child: _buildToggleOption(
            text: emailText,
            isSelected: isEmailSelected,
            onTap: () => _updateToggleSelection(true),
            alignment: TextAlign.start,
          ),
        ),
        Expanded(
          child: _buildToggleOption(
            text: phoneText,
            isSelected: !isEmailSelected,
            onTap: () => _updateToggleSelection(false),
            alignment: TextAlign.end,
          ),
        ),
      ],
    );
  }

  Widget _buildToggleOption({
    required String text,
    required bool isSelected,
    required VoidCallback onTap,
    required TextAlign alignment,
  }) {
    return InkWell(
      onTap: onTap,
      child: AppTextWidget(
        text: text,
        textAlign: alignment,
        left: alignment == TextAlign.start ? 5 : 0,
        right: alignment == TextAlign.end ? 5 : 0,
      ),
    );
  }

  void _updateToggleSelection(bool value) {
    if (isEmailSelected != value) {
      setState(() {
        isEmailSelected = value;
      });
    }
  }

  void _handleSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // Handle form submission
    }
  }

  Widget _buildIndicatorRow(BuildContext context) {
    return Container(
      height: 2,
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: isEmailSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
            ),
          ),
          Expanded(
            child: Container(
              color: !isEmailSelected
                  ? Theme.of(context).colorScheme.primary
                  : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}
