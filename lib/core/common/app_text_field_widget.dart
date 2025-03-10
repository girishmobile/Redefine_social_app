import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/components/components.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget(
      {super.key,
      this.hintText,
      this.controller,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false,
      this.readOnly = false,
      this.left,
      this.right,
      this.top,
      this.bottom,
      this.borderColor,
      this.borderRadius,
      this.height,
      this.fillColor,
      this.style,
      this.validator,
      this.onChanged,
      this.onTap,
      this.maxLine});
  final String? hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final bool? readOnly;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? borderRadius;
  final double? height;
  final Color? fillColor;
  final Color? borderColor;
  final TextStyle? style;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final int? maxLine;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(
          left: left ?? 0,
          right: right ?? 0,
          top: top ?? 0,
          bottom: bottom ?? 0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        readOnly: readOnly ?? false,
        maxLines: maxLine ?? 1,
        cursorColor: Colors.black,
        style: style ?? Theme.of(context).textTheme.bodyMedium,
        validator: validator,
        onChanged: onChanged,
        onTap: onTap,
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          fillColor: fillColor,
          filled: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 12),
          focusedBorder: commonBorderView(borderColor: Colors.black),
          enabledBorder: commonBorderView(),
          border: commonBorderView(),
        ),
      ),
    );
  }
}
//Thi is the basic button widget of app you can use it in the all view and screen with common style
//if you want to customize it plz send above parameter other wise it's take same default button
//other wise it make support the method to customize the button
