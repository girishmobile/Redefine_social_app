import 'package:flutter/material.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget({
    super.key,
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
  });
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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      margin: EdgeInsets.only(
          left: left ?? 0,
          right: right ?? 0,
          top: top ?? 0,
          bottom: bottom ?? 0),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        readOnly: readOnly ?? false,
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
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          focusedBorder: commonBorderView(borderColor: Colors.black),
          enabledBorder: commonBorderView(),
          border: commonBorderView(),
        ),
      ),
    );
  }

  commonBorderView({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 0),
      borderSide: BorderSide(color: borderColor ?? Colors.grey),
    );
  }
}
