import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';

class FriendsActivityView extends StatelessWidget {
  const FriendsActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleName: "Friend's Activity",
      ),
      body: Center(
        child: Text('Notification'),
      ),
    );
  }
}
