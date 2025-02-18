import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    this.body,
    this.appBar,
    this.bottomNavigation,
    this.floatingActionButton,
  });

  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigation;
  final Widget? floatingActionButton;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: appBar ??
          AppBar(
            elevation: zero5,
            backgroundColor: Theme.of(context).colorScheme.surface,
            iconTheme:
                IconThemeData(color: Theme.of(context).colorScheme.primary),
            title: isPortrait
                ? loadAssetImage(name: applogo, width: size.width * zero4)
                : loadAssetImage(name: applogo, width: size.width * zero2),
          ),
      body: body,
      bottomNavigationBar: bottomNavigation,
      floatingActionButton: floatingActionButton,
    );
  }
}
