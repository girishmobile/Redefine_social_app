import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class TermAndCondotionView extends StatelessWidget {
  const TermAndCondotionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          AppTextWidget(
            text: termsAndConditionText,
          )
        ],
      ),
    );
  }
}
/**
 */
