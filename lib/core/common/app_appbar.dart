import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppbar({super.key, this.titleName});

  final String? titleName;
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return AppBar(
      elevation: zero5,
      backgroundColor: Theme.of(context).colorScheme.surface,
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
      title: titleName?.isNotEmpty == true
          ? AppTextWidget(
              text: titleName,
              style: Theme.of(context).textTheme.bodyLarge,
            )
          : isPortrait
              ? loadAssetImage(name: applogo, width: size.width * zero4)
              : loadAssetImage(
                  name: applogo,
                  width: size.width * zero2,
                ),
    );
  }
}
