import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_list_row.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          AppListRow(
            text: 'Friend #1',
          ),
          AppListRow(
            text: 'Friend #2',
          ),
          AppListRow(
            text: 'Friend #3',
          ),
          AppListRow(
            text: 'Friend #4',
          ),
          AppListRow(
            text: 'Friend #5',
          ),
        ],
      ),
    );
  }
}
