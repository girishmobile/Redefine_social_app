import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_header_text.dart';

class SendView extends StatelessWidget {
  const SendView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeaderText(
          text: 'Send',
        )
      ],
    );
  }
}
