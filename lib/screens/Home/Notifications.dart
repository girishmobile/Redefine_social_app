import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_header_text.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
          child: Column(
        children: [
          AppHeaderText(text: 'Activity'),
          AppTextWidget(
            text: 'List of Notification',
          )
        ],
      )),
    );
  }
}
