import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/screens/Home/Event/components/basic_info_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/details_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/guests_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/send_view.dart';
import 'package:redefine_social_app/screens/Home/Event/components/wallet_view.dart';

class CreateEventView extends StatefulWidget {
  const CreateEventView({super.key});

  @override
  State<CreateEventView> createState() => _CreateEventViewState();
}

///s/aSasaSa
///saSasaSas saS
///
///SasaSsSsaS SasSas
class _CreateEventViewState extends State<CreateEventView> {
  int currentStep = 0;

  final List<Widget> _steps = [
    BasicInfoView(),
    DetailsView(),
    GuestsView(),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(
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

  Widget _buildStep(String title, bool isCompleted, {int? stepNumber}) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isCompleted ? Colors.black : colorHeader,
          child: isCompleted
              ? const Icon(
                  Icons.check,
                  color: Colors.white,
                )
              : Text(
                  "$stepNumber",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
        const SizedBox(height: 4),
        Text(title),
      ],
    );
  }

  Widget _buildDivider() {
    return Expanded(
      child: Container(
        height: 4,
        color: Colors.black,
      ),
    );
  }
}
