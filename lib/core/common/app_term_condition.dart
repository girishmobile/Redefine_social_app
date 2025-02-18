import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppTermCondition extends StatefulWidget {
  const AppTermCondition({super.key});

  @override
  State<AppTermCondition> createState() => _AppTermConditionState();
}

class _AppTermConditionState extends State<AppTermCondition> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: isSelected,
            onChanged: (value) {
              setState(() {
                isSelected = !isSelected;
              });
            }),
        AppTextWidget(
          text: termsAndConditionText,
        )
      ],
    );
  }
}
