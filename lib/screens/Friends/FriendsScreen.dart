import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    return Container(
      color: colorScheme.surface,
      child: Center(
        child: Column(
          spacing: columSpacing,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppTextWidget(
              text: 'FRIEND',
              style: textTheme.bodyLarge,
            ),
            const Icon(
              Icons.groups,
              size: 64,
            ),
            AppTextWidget(
              text: welcomeText,
              style: textTheme.headlineMedium,
            ),
            const AppTextWidget(
              text: notyetAnyfriends,
            ),
            AppButtonWidget(
              icon: Icon(
                Icons.group_add,
                size: 24,
                color: colorScheme.surface,
              ),
              onPressed: () =>
                  Navigator.pushNamed(context, RouteName.addFriends),
              text: addFriends,
              buttonStyle: commonButtonStyle(context: context),
            )
          ],
        ),
      ),
    );
  }
}
