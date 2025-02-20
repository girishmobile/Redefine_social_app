import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppListRow extends StatelessWidget {
  const AppListRow(
      {super.key, this.text, this.backgroundColor, this.width, this.height});
  final String? text;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.all(containerPadding),
      color: backgroundColor ?? colorHeader,
      child: AppTextWidget(
        text: text,
      ),
    );
  }
}
