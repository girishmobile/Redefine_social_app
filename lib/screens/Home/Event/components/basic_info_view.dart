import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_header_text.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class BasicInfoView extends StatelessWidget {
  const BasicInfoView({super.key});
  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;
    return Column(
      children: [
        AppHeaderText(text: 'Basic Info'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextWidget(
                  textAlign: TextAlign.center,
                  text:
                      'WILL THIS BE ONE OF MANY EVENTS TO CREATE IN A SERIES?',
                  style: themeText.titleLarge,
                ),
                TextButton(
                  onPressed: () {
                    print("Button Pressed");
                  },
                  child: Text(
                    "Yes, I'll be planning multiple events",
                    style: TextStyle(
                      color: colorDarkblue, // Set text color
                      decoration: TextDecoration.underline,
                      decorationColor: colorDarkblue,
                      decorationThickness: 1,
                      height: 1.5,
                      fontSize: 16, // Adjust font size
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
/**
 */
