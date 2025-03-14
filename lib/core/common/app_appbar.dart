import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key, this.titleName, this.actions,this.leading,this.title,this.centerTitle});
  final String? titleName;
  final List<Widget>? actions;
  final Widget? leading;
  final  Widget? title;
  final bool? centerTitle;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return AppBar(
      centerTitle: centerTitle,
      surfaceTintColor: Colors.transparent,
      shadowColor: theme.colorScheme.primary.withValues(alpha: 0.3),
      actionsIconTheme: IconThemeData(color: theme.colorScheme.primary),
      elevation: 1,
      leading: leading,
      backgroundColor: theme.colorScheme.surface,
      iconTheme: IconThemeData(color: theme.colorScheme.primary),
      title: title??_buildTitles(size, isPortrait, theme),
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
