import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';

class FriendList extends StatefulWidget {
  const FriendList({super.key});

  @override
  State<FriendList> createState() => _FriendListState();
}

class _FriendListState extends State<FriendList> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppAppbar(titleName: 'FRIENDS'),
      body: Center(
        child: Text('List of Friends'),
      ),
    );
  }
}
