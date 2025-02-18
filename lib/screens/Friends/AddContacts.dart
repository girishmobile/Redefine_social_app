import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class AddContacts extends StatelessWidget {
  const AddContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
        titleName: 'Add by Contacts',
      ),
      body: SafeArea(
          child: Center(
        child: AppTextWidget(
          text: 'Add by Contacts',
        ),
      )),
    );
  }
}
