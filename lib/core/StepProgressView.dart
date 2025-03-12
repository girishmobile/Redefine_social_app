import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';

class StepProgressView extends StatefulWidget {
  final double width;
  //final int totalSteps;
  final int initialStep;
  final List<String> item;
  final Color activeColor;
  final Color inactiveColor;
  final Function(int) onStepTapped;
  const StepProgressView({
    super.key,
    // required this.totalSteps,
    required this.initialStep,
    required this.width,
    required this.activeColor,
    required this.item,
    required this.onStepTapped,
    this.inactiveColor = Colors.grey,
  });

  @override
  _StepProgressViewState createState() => _StepProgressViewState();
}

class _StepProgressViewState extends State<StepProgressView> {
  late int _curStep;

  @override
  void initState() {
    super.initState();
    _curStep = widget.initialStep;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0),
      margin: EdgeInsets.all(10),
      width: widget.width,
      child: Column(
        children: <Widget>[
          Row(children: _iconViews()),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _titleViews(),
          ),
        ],
      ),
    );
  }

  List<Widget> _titleViews() {
    return widget.item
        .map((text) => AppTextWidget(
            text: text,
            style: commonTextStyle(
                color: widget.activeColor, fontWeight: FontWeight.w600)))
        .toList();
  }

  List<Widget> _iconViews() {
    var list = <Widget>[];
    for (int i = 0; i < widget.item.length; i++) {
      bool isCompleted = _curStep > i + 1;
      bool isSelected = _curStep == i + 1;

      var circleColor =
          isCompleted || isSelected ? widget.activeColor : widget.inactiveColor;
      var textColor = isCompleted || isSelected ? Colors.white : Colors.black;
      var lineColor = Colors.grey;

      list.add(
        GestureDetector(
          onTap: () {
            setState(() {
              _curStep = i + 1; // Ensures _curStep is within range
            });
            widget.onStepTapped(i); // Pass zero-based index to callback
          },
          child: Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: circleColor,
              borderRadius: BorderRadius.circular(25.0),
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            child: Center(
              child: isCompleted
                  ? const Icon(Icons.done, color: Colors.white, size: 20.0)
                  : AppTextWidget(
                      text: '${i + 1}',
                      style: commonTextStyle(
                          color: textColor, fontWeight: FontWeight.bold),
                    ),
            ),
          ),
        ),
      );
      if (i != widget.item.length - 1) {
        list.add(Expanded(child: Container(height: 10.0, color: lineColor)));
      }
    }
    return list;
  }
}
