import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class AppButtonWidget extends StatelessWidget {
  const AppButtonWidget({
    super.key,
    this.borderColor,
    this.borderRadius,
    this.borderWidth,
    this.buttonStyle,
    this.color,
    this.elevation,
    this.height,
    this.icon,
    this.isShowBorder,
    this.isShowIcon,
    this.isShowLoading,
    this.isShowProgress,
    this.isShowShadow,
    this.onPressed,
    this.shadowColor,
    this.shadowOffsetX,
    this.shadowOffsetY,
    this.shadowRadius,
    this.shadowSpread,
    this.text,
    this.textColor,
    this.textStyle,
    this.top,
    this.bottom,
    this.left,
    this.right,
    this.width,
  });

  final String? text;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? borderRadius;
  final double? width;
  final double? height;
  final bool? isShowIcon;
  final Widget? icon;
  final Color? color;
  final Color? textColor;
  final TextStyle? textStyle;
  final ButtonStyle? buttonStyle;
  final bool? isShowBorder;
  final Color? borderColor;
  final double? borderWidth;
  final bool? isShowShadow;
  final double? elevation;
  final double? shadowRadius;
  final double? shadowSpread;
  final Color? shadowColor;
  final double? shadowOffsetX;
  final double? shadowOffsetY;
  final bool? isShowLoading;
  final bool? isShowProgress;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height ?? 44,
      margin: EdgeInsets.only(
          left: left ?? 0,
          right: right ?? 0,
          top: top ?? 0,
          bottom: bottom ?? 0),
      child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: isShowIcon ?? true ? icon : null,
          style: buttonStyle,
          label: AppTextWidget(
            text: text,
            style: textStyle ?? Theme.of(context).textTheme.labelMedium,
          )),
    );
  }
}
