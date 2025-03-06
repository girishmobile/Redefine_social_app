import 'package:flutter/material.dart';

class AppDividerWidget extends StatelessWidget {
  const AppDividerWidget({
    super.key,
    this.color,
    this.height,
    this.indent,
    this.endIndent,
    this.thickness,
    this.width,
  });

  final Color? color;
  final double? height;
  final double? indent;
  final double? endIndent;
  final double? thickness;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Divider(
        indent: indent ?? 10,
        endIndent: endIndent ?? 10,
        height: height ?? 1,
        color: color ?? Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
