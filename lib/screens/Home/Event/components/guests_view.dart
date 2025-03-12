import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class GuestsView extends StatelessWidget {
  const GuestsView({super.key});
  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            spacing: columnSpacing,
            children: [
              _buildVisibilitySection(themeText, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVisibilitySection(TextTheme themeText, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.person_4, size: 48),
            SizedBox(width: 8),
            Expanded(
              child: Text(
                  "Will guests be able to see who's invited and who's RSVP'd?",
                  style: themeText.titleLarge?.copyWith(fontSize: 20)),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButtonWidget(
              onPressed: () {},
              text: 'YES',
              btnStyle: commonButtonStyle(
                context: context,
                borderRadius: 30,
                backgroundColor: Colors.blue,
              ),
            ),
            SizedBox(
              width: 16,
            ),
            AppButtonWidget(
              onPressed: () {},
              text: 'NO',
              btnStyle: commonButtonStyle(
                context: context,
                borderRadius: 30,
                backgroundColor: Colors.blue,
              ),
            ),
          ],
        )
      ],
    );
  }
}
