import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_dropdown_button.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class BasicSingleEvent extends StatefulWidget {
  const BasicSingleEvent({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  State<BasicSingleEvent> createState() => _BasicSingleEventState();
}

class _BasicSingleEventState extends State<BasicSingleEvent> {
  List<String> eventType = [
    "Charity",
    "Fashion",
    "Film",
    "Media",
    "Food",
    "Auto",
    "Health & Wellness",
    "Music",
    "etc"
  ];
  List<String> eventPrivateOrPublic = [
    "PRIVATE EVENT",
    "PUBLIC EVENT",
  ];
  String? selectedEventType;
  String? selectedEvent;

  @override
  Widget build(BuildContext context) {
    final themeText = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: columSpacing,
          children: [
            _commonHeaderWithIcon(
                'EVENT BASICS', Icons.event_note_outlined, themeText),
            AppTextFieldWidget(
              hintText: 'Event Name',
            ),
            Container(
              color: Colors.transparent,
              width: size.width,
              height: 42,
              child: AppDropdownButton(
                width: size.width,
                items: eventType,
                hintText: 'Event Type',
                selectedValue: selectedEventType,
                onChanged: (value) {
                  setState(() {
                    selectedEventType = value ?? '';
                  });
                },
              ),
            ),
            _commonHeaderWithIcon(
                'DATE AND TIME', Icons.calendar_month, themeText),
            Row(
              spacing: 16,
              children: [
                _commonTextField('Event Start'),
                _commonTextField('Start Time'),
              ],
            ),
            Row(
              spacing: 16,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(child: Container()),
                _commonTextField('Time zone')
              ],
            ),
            _commonHeaderWithIcon(
                'PUBLICITY OR PRIVACY?', Icons.lock, themeText),
            Container(
              color: Colors.transparent,
              height: 42,
              width: size.width,
              child: AppDropdownButton(
                width: size.width,
                items: eventPrivateOrPublic,
                hintText: 'Will this be a PRIVATE or PUBLIC event?',
                selectedValue: selectedEvent,
                onChanged: (value) {
                  setState(() {
                    selectedEvent = value ?? '';
                  });
                },
              ),
            ),
            AppTextWidget(
              text:
                  "If private, then only invited guests will be able to find this event in their own newsfeed. If it's public, then it will appear in the newsfeed of other users who did not attend and users can search for event.",
              style: themeText.bodySmall,
            ),
            Center(
              child: AppButtonWidget(
                onPressed: widget.onPressed,
                text: 'Save & Continue',
                btnStyle: commonButtonStyle(
                    context: context, backgroundColor: Colors.red),
              ),
            )
          ],
        ),
      ),
    );
  }

  _commonTextField(String textHint) {
    return Expanded(
      child: AppTextFieldWidget(
        readOnly: true,
        hintText: textHint,
        suffixIcon: Icon(Icons.arrow_drop_down),
      ),
    );
  }

  _commonHeaderWithIcon(String title, IconData iconName, TextTheme themeText) {
    return Row(
      children: [
        Icon(
          iconName,
          size: 36,
        ),
        AppTextWidget(
          text: title,
          style: themeText.titleLarge,
        ),
      ],
    );
  }
}
