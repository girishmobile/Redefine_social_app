import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleName: "Friend's Activity",
      ),
      body: Column(
        children: [Text('ALL NOTIFICATION')],
      ),
    );
  }
}
