import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AppEventButton extends StatelessWidget {
  const AppEventButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.unfold_more),
        label: AppTextWidget(
          text: text,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.colorScheme.surface,
          foregroundColor: theme.colorScheme.primary,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(eight),
            side: BorderSide(
              color: theme.colorScheme.primary.withValues(alpha: 0.3),
            ),
          ),
        ),
      ),
    );
  }
}
/***

 */
