import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_list_row.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeView> {
  List<String> friendList = [
    'Friend #1',
    'Friend #2',
    'Friend #3',
    'Friend #4',
    'Friend #5',
  ];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: const Color.fromARGB(255, 226, 204, 173),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppTextWidget(
                  text: 'YOUR EVENTS',
                  style: theme.textTheme.titleMedium,
                ),
                Row(
                  spacing: 0,
                  children: [
                    IconButton(
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      icon: Icon(
                        Icons.filter_alt_outlined,
                        size: 32,
                      ),
                      onPressed: () => showCustomAlert(context),
                    ),
                    IconButton(
                      visualDensity:
                          VisualDensity(horizontal: -4, vertical: -4),
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        size: 32,
                      ),
                      onPressed: () => showBasicAlert(context),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Container(
                height: 10, // Space between items
              ),
              itemCount: friendList.length,
              itemBuilder: (context, index) => AppListRow(
                text: friendList[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
