import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_list_row.dart';

class AppListView extends StatefulWidget {
  const AppListView(
      {super.key, required this.friendList, this.isCheckBox = false});

  final List<String> friendList;
  final bool? isCheckBox;

  @override
  State<AppListView> createState() => _AppListViewState();
}

class _AppListViewState extends State<AppListView> {
  // Replace single boolean with a Set to track selected indices
  Set<int> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Container(
        height: 10, // Space between items
      ),
      itemCount: widget.friendList.length,
      itemBuilder: (context, index) => AppListRow(
        text: widget.friendList[index],
        ischekcbox: widget.isCheckBox,
        // Pass whether this specific index is selected
        selectedItem: selectedItems.contains(index),
        onChanged: (value) {
          setState(() {
            if (value ?? false) {
              selectedItems.add(index);
            } else {
              selectedItems.remove(index);
            }
          });
        },
      ),
    );
  }
}
