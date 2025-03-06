import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class BasicMultipleEvent extends StatelessWidget {
  const BasicMultipleEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppTextWidget(
          text: 'Basic multiple event',
        )
      ],
    );
  }
}
