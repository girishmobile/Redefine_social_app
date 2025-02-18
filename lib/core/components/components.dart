import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

loadAssetImage(
    {required String name, double? width, double? height, BoxFit? fit}) {
  return Image.asset(
    name,
    fit: fit ?? BoxFit.contain,
    width: width,
    height: height,
  );
}

BoxDecoration commonBoxDecoration(
    {Color? color,
    BoxBorder? border,
    BoxShape shape = BoxShape.rectangle,
    BorderRadiusGeometry? borderRadius,
    DecorationImage? image}) {
  return BoxDecoration(
      color: color,
      image: image,
      border: border,
      shape: shape,
      borderRadius: borderRadius);
}

commonButtonStyle({
  Color? backgroundColor,
  Color? foregroundColor,
  TextStyle? textStyle,
  Color? borderColor,
  double? width,
  double? borderRadius,
  BuildContext? context,
}) {
  return ElevatedButton.styleFrom(
      textStyle: textStyle,
      backgroundColor: backgroundColor ??
          (context != null
              ? Theme.of(context).colorScheme.primary
              : Colors.blue),
      foregroundColor: foregroundColor ??
          (context != null
              ? Theme.of(context).colorScheme.onPrimary
              : Colors.blue),
      disabledBackgroundColor: backgroundColor ?? Colors.blue,
      disabledForegroundColor: foregroundColor ?? Colors.blue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? eight),
        side:
            BorderSide(color: borderColor ?? Colors.blue, width: width ?? 0.0),
      ),
      elevation: zero);
}

TextStyle commonTextStyle(
    {Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    BuildContext? context}) {
  return TextStyle(
    color: color ??
        (context != null
            ? Theme.of(context).colorScheme.primary
            : Colors.black),
    fontSize: fontSize ?? 14.0,
    fontWeight: fontWeight ?? FontWeight.w500,
    fontFamily: fontTenorSans,
  );
}
