import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_dropdown_button.dart';
import 'package:redefine_social_app/core/common/app_event_button.dart';
import 'package:redefine_social_app/core/common/app_row_event.dart';
import 'package:redefine_social_app/core/common/app_search_bar.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class PublicEventView extends StatefulWidget {
  const PublicEventView({super.key});

  @override
  State<PublicEventView> createState() => _PublicEventViewState();
}

class _PublicEventViewState extends State<PublicEventView> {
  List<String> items = ["10 KM", "20 KM", "50 KM", "100 KM", "200 KM"];
  String? selectedValue;

  List<String> eventItems = ["Public", "Private"];
  String? selectedEvent;
  List<String> dayItem = ["Day", "Night"];
  String? selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppAppbar(
          titleName: 'Public Event',
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(containerPadding),
            child: Column(
              spacing: columSpacing / 2,
              children: [
                Column(
                  spacing: columSpacing / 2,
                  children: [
                    AppSearchBar(),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                      height: 52,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          spacing: columSpacing / 2,
                          children: [
                            AppEventButton(
                              text: 'Sort',
                              onTap: () {},
                            ),
                            AppDropdownButton(
                              hintText: "Distance",
                              items: items,
                              selectedValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value ?? '';
                                });
                              },
                            ),
                            AppDropdownButton(
                              items: eventItems,
                              hintText: 'Event Type',
                              selectedValue: selectedEvent,
                              onChanged: (value) {
                                setState(() {
                                  selectedEvent = value ?? '';
                                });
                              },
                            ),
                            AppDropdownButton(
                              hintText: 'Day',
                              items: dayItem,
                              selectedValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value ?? '';
                                });
                              },
                            ),
                            AppDropdownButton(
                              hintText: 'Time',
                              items: dayItem,
                              selectedValue: selectedDay,
                              onChanged: (value) {
                                setState(() {
                                  selectedDay = value ?? '';
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                    child: ListView.separated(
                        itemBuilder: (context, index) => AppRowEvent(
                              onTap: () => Navigator.pushNamed(
                                  context, RouteName.eventDetail),
                            ),
                        separatorBuilder: (context, index) => Container(
                              height: 10,
                            ),
                        itemCount: 10))
              ],
            ),
          ),
        ));
  }
}
