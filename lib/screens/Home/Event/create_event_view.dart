import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_header_text.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/common/app_underline_button.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/screens/Home/Event/components/basic_multiple_event.dart';
import 'package:redefine_social_app/screens/Home/Event/components/basic_single_event.dart';
import 'package:redefine_social_app/screens/Home/Event/components/details_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/guests_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/send_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/wallet_view.dart';

import '../../../core/StepProgressView.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

class _CreateEventViewState extends State<CreateEventView> {
  int currentStep = 0;

  List<Widget> get _steps => [
        _simpleBasicInfo(Theme.of(context).textTheme),
        _detailsView(),
        _guestInfo(),
        WalletView(),
        SendView()
      ];
  final List<String> _stepLabels = [
    "Basics",
    "Details",
    "Guests",
    "Wallet",
    "Send"
  ];

  void _onStepTapped(int index) {
    setState(() {
      currentStep = index;
    });
  }

  bool isMultipleEvent = false;
  bool isSingleEvent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        titleName: 'CREATE EVENT',
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(child: _steps[currentStep]),
            StepProgressView(

              width: MediaQuery.of(context).size.width,
              initialStep: 1,
              item: _stepLabels,
              inactiveColor: Colors.white,
              onStepTapped: _onStepTapped,
              activeColor: Colors.black,
            ),

          ],
        ),
      ),
    );
  }

  Widget _simpleBasicInfo(TextTheme themeText) {
    return Column(
      children: [
        AppHeaderText(text: 'Basic Info'),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8),
            child: isMultipleEvent
                ? BasicMultipleEvent()
                : isSingleEvent
                    ? BasicSingleEvent(
                        onPressed: () {
                          setState(() {
                            currentStep = 1;
                          });
                        },
                      )
                    : Column(
                        spacing: columnSpacing,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppTextWidget(
                            textAlign: TextAlign.center,
                            text:
                                'WILL THIS BE ONE OF MANY EVENTS TO CREATE IN A SERIES?',
                            style: themeText.titleLarge,
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isMultipleEvent = true;
                              });
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: AppUnderlineButton(
                              text: "Yes, I'll be planning multiple events",
                              style: themeText.labelMedium?.copyWith(
                                    color: colorDarkblue,
                                  ) ??
                                  TextStyle(),
                              gap: 2,
                              underlineHeight: 1,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              setState(() {
                                isSingleEvent = true;
                              });
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size(0, 0),
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            child: AppUnderlineButton(
                              text: "No, just one and done",
                              style: themeText.labelMedium?.copyWith(
                                    color: colorDarkblue,
                                  ) ??
                                  TextStyle(),
                              gap: 2,
                              underlineHeight: 1,
                            ),
                          ),
                        ],
                      ),
          ),
        )
      ],
    );
  }

  Widget _detailsView() {
    return Column(
      children: [
        AppHeaderText(
          text: 'Details',
        ),
        DetailsView(
          onPressed: () {
            setState(() {
              currentStep = 2;
            });
          },
        )
      ],
    );
  }

  Widget _guestInfo() {
    return Column(
      children: [
        AppHeaderText(
          text: 'Guests',
        ),
        GuestsView()
      ],
    );
  }
}
