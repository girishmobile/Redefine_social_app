import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';

class AppUnderlineButton extends StatelessWidget {
  const AppUnderlineButton(
      {super.key,
      required this.text,
      required this.style,
      this.gap = 2,
      this.underlineHeight = 1,
      this.color = colorDarkblue});
  final String text;
  final TextStyle style;
  final double gap;
  final double underlineHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    //Measure the width of the text using TextPainter
    final TextPainter textPainter = TextPainter(
        text: TextSpan(text: text, style: style),
        textDirection: TextDirection.ltr)
      ..layout();

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: style,
        ),
        SizedBox(
          height: gap,
        ),
        Container(
          width: textPainter.size.width,
          height: underlineHeight,
          color: color,
        )
      ],
    );
  }
}
