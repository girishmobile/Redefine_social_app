import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/components/components.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.iconName,
    required this.onPressed,
    this.height,
    this.width,
  });

  final String iconName;
  final VoidCallback onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: loadAssetImage(
        name: iconName,
        width: width ?? 48,
        height: height ?? 48,
      ),
    );
  }
}
