import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    this.text,
    this.onPressed,
    this.textStyle,
    this.horizontal,
    this.vertical,
    this.top,
    this.bottom,
    this.left,
    this.icon,
    this.right,
    this.btnStyle,
    this.height,
    this.isShowIcon = false,
    this.width,
  });

  final String? text;
  final double? horizontal;
  final Widget? icon;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? vertical;
  final double? width;
  final double? height;
  final bool? isShowIcon;
  final TextStyle? textStyle;
  final VoidCallback? onPressed;
  final ButtonStyle? btnStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 48,
      margin: EdgeInsets.only(
          left: left ?? 0,
          right: right ?? 0,
          top: top ?? 0,
          bottom: bottom ?? 0),
      child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: isShowIcon ?? true ? icon : null,
          style: btnStyle ??
              ElevatedButton.styleFrom(
                backgroundColor: colorOrange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
          label: AppTextWidget(
            text: text,
            style: textStyle ?? Theme.of(context).textTheme.labelMedium,
          )),
    );
  }
}
