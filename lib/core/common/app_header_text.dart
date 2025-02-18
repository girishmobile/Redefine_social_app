import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class AppHeaderText extends StatelessWidget {
  const AppHeaderText({super.key, this.text});

  final String? text;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.all(8),
      width: size.width,
      color: Theme.of(context).colorScheme.primaryContainer,
      child: AppTextWidget(
        text: text ?? '',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
    );
  }
}
