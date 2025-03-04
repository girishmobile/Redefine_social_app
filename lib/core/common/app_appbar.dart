import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppbar({super.key, this.titleName, this.actions});
  final String? titleName;
  final List<Widget>? actions;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return AppBar(
      surfaceTintColor: Colors.transparent,
      shadowColor: theme.colorScheme.primary.withValues(alpha: 0.3),
      actionsIconTheme: IconThemeData(color: theme.colorScheme.primary),
      elevation: 1,
      backgroundColor: theme.colorScheme.surface,
      iconTheme: IconThemeData(color: theme.colorScheme.primary),
      title: _buildTitles(size, isPortrait, theme),
      actions: actions,
    );
  }

  Widget _buildTitles(Size size, bool isPortrait, ThemeData theme) {
    if (titleName?.isNotEmpty == true) {
      return AppTextWidget(
        text: titleName ?? "",
        style: theme.textTheme.bodyLarge,
      );
    }

    return loadAssetImage(
      name: applogo,
      width: size.width * (isPortrait ? 0.4 : 0.2),
    );
  }
}

// /titleName?.isNotEmpty == true
//           ? AppTextWidget(
//               text: titleName,
//               style: Theme.of(context).textTheme.bodyLarge,
//             )
//           : isPortrait
//               ? loadAssetImage(name: applogo, width: size.width * zero4)
//               : loadAssetImage(
//                   name: applogo,
//                   width: size.width * zero2,
//                 ),
/**
 */
