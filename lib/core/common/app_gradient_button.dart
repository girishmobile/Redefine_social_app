import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';

class AppGradientButton extends StatelessWidget {
  const AppGradientButton({
    super.key,
    this.height,
    this.width,
    this.text,
    this.bottom,
    this.left,
    this.right,
    this.top,
    this.borderRadius,
    this.onPressed,
  });

  final String? text;
  final double? height;
  final double? width;
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  final double? borderRadius;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: width ?? size.width,
      alignment: Alignment.center,
      height: height ?? 44,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOrange, colorPurple], // Gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:
            BorderRadius.circular(borderRadius ?? 30), // Border radius
        boxShadow: [
          BoxShadow(
            color: Color(0xFFDF282D).withValues(alpha: 0.3), // Shadow color
            blurRadius: 10, // Softness of shadow
            spreadRadius: 2, // Spread radius
            offset: Offset(4, 4), // Position of shadow
          ),
        ],
      ),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  borderRadius ?? 30), // Match border radius
            ),
          ),
          onPressed: () {},
          label: Text(
            text ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white, // Text color for visibility
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
