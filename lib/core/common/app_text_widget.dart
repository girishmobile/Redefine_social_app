import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppTextWidget extends StatelessWidget {
  const AppTextWidget(
      {super.key,
      this.text,
      this.style,
      this.textAlign,
      this.left,
      this.right,
      this.top,
      this.bottom,
      this.maxLines,
      this.textOverflow,
      this.softWrap,
      this.size});
  final String? text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? textOverflow;
  final bool? softWrap;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final Size? size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size?.width,
      margin: EdgeInsets.only(
          left: left ?? zero,
          right: right ?? zero,
          bottom: bottom ?? zero,
          top: top ?? zero),
      child: Text(
        text ?? "",
        textAlign: textAlign ?? TextAlign.start,
        overflow: textOverflow,
        softWrap: softWrap,
        maxLines: maxLines,
        style: style ?? Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
