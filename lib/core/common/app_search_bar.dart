import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_field_widget.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFieldWidget(
      hintText: 'search',
      prefixIcon: Icon(Icons.search),
    );
  }
}
