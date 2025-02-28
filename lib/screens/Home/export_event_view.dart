import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_list_view.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';

class ExportEventView extends StatelessWidget {
  const ExportEventView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> frndlist = [
      'Friend #1',
      'Friend #2',
      'Friend #3',
      'Friend #4',
      'Friend #5'
    ];
    return Scaffold(
      appBar: AppAppbar(
        titleName: "Export Events",
        actions: [
          TextButton(
              onPressed: () => showBottomsheetMenu(context),
              child: AppTextWidget(
                text: 'Export',
                style: Theme.of(context).textTheme.headlineMedium,
              ))
        ],
      ),
      body: AppListView(
        friendList: frndlist,
        isCheckBox: true,
      ),
    );
  }
}
