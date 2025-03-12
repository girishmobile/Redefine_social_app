import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';

class HostEventDetailView extends StatelessWidget {
  const HostEventDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleName: 'Host Event Detail',
      ),
      body: Center(
        child: Text('Host Event Detail'),
      ),
    );
  }
}
