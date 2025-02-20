import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/screens/components/not_yet_friend.dart';

class FriendsView extends StatelessWidget {
  const FriendsView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Container(
      color: colorScheme.surface,
      padding: EdgeInsets.symmetric(horizontal: containerPadding),
      child: NotYetFriend(),
    );
  }
}
