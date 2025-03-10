import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';

class AppTextfieldView extends StatelessWidget {
  const AppTextfieldView({super.key, this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        borderRadius: BorderRadius.circular(30), // Border radius
        boxShadow: [
          BoxShadow(
            color: colorOrange.withValues(alpha: 0.2), // Shadow color
            blurRadius: 6, // Softness of shadow
            spreadRadius: 1, // How much the shadow spreads
            offset: Offset(1, 1), // Shadow position (X, Y)
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Text(text ?? "", style: TextStyle(fontSize: 14)),
      ),
    );
  }
}
