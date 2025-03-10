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
            Container(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    /// Progress Line Behind Steps
                    Positioned(
                      top: 20, // Aligns progress line with step circles
                      left: 0,
                      right: 0,
                      child: Row(
                        children:
                            List.generate(_stepLabels.length * 2 - 1, (index) {
                          if (index.isOdd) {
                            // Skip first and last line
                            if (index == 1 ||
                                index == _stepLabels.length * 2 - 3) {
                              return SizedBox(
                                  width: 20); // Empty space instead of line
                            }
                            return Expanded(
                              child: Container(
                                height: 4,
                                color: (index ~/ 2) < currentStep
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            );
                          } else {
                            return SizedBox(); // Empty to maintain structure
                          }
                        }),
                      ),
                    ),

                    /// Stepper Row (Circles + Labels)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(_stepLabels.length, (index) {
                        bool isCompleted = index < currentStep;
                        bool isCurrent = index == currentStep;
                        return Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              /// Step Indicator (Circle)
                              GestureDetector(
                                onTap: () => _onStepTapped(index),
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: isCompleted
                                        ? Colors.black
                                        : (isCurrent
                                            ? Colors.white
                                            : Colors.grey),
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: Colors.black,
                                      width: isCurrent ? 2 : 1,
                                    ),
                                  ),
                                  alignment: Alignment.center,
                                  child: isCompleted
                                      ? Icon(Icons.check,
                                          color: Colors.white, size: 24)
                                      : Text(
                                          "${index + 1}",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: isCurrent
                                                ? Colors.black
                                                : Colors.white,
                                          ),
                                        ),
                                ),
                              ),
                              const SizedBox(
                                  height: 4), // Space between circle and text
                              /// Step Label Below Circle
                              Text(
                                _stepLabels[index],
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ],
                ))
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
