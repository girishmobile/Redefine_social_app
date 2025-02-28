import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class CreateEventView extends StatelessWidget {
  const CreateEventView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        titleName: 'CREATE EVENT',
      ),
      body: Center(
        child: AppTextWidget(
          text: 'Create Event',
        ),
      ),
    );
  }
}
