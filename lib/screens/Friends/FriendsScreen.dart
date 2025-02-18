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
    return Container(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: columSpacing,
          children: [
            AppTextWidget(
              text: 'FRIEND',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Icon(
              Icons.groups,
              size: 64,
            ),
            AppTextWidget(
              text: welcomeText,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            AppTextWidget(
              text: notyetAnyfriends,
            ),
            AppButtonWidget(
              icon: Icon(
                Icons.group_add,
                size: 24,
                color: Theme.of(context).colorScheme.surface,
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteName.addFriends);
              },
              text: addFriends,
              buttonStyle: commonButtonStyle(context: context),
            )
          ],
        ),
      ),
    );
  }
}
