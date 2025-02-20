import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_icon_button.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class AddFriendView extends StatefulWidget {
  const AddFriendView({super.key});

  @override
  State<AddFriendView> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriendView> {
  // Static values to avoid recreating constants
  static const double _dividerThickness = 0.5;
  static const double _dividerHeight = 0.25;
  static const double _iconSize = 24.0;
  static const double _sizedBoxHeight = 30.0;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        elevation: zero5,
        backgroundColor: Theme.of(context).colorScheme.surface,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        title: AppTextWidget(
          text: 'ADD FRIENDS',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          _simpleTiles(
            titleName: 'Add by Phone Number',
            onTap: () {
              Navigator.pushNamed(context, RouteName.addFriendByPhoneNumber);
            },
            icon: Icons.person_add_alt_1_rounded,
          ),
          Divider(
            thickness: _dividerThickness,
            height: _dividerHeight,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
          _simpleTiles(
            titleName: 'Add from contacts',
            onTap: () {
              Navigator.pushNamed(context, RouteName.addContacts);
            },
            icon: Icons.contact_page,
          ),
          const SizedBox(height: _sizedBoxHeight),
          Padding(
            padding: const EdgeInsets.all(containerPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppTextWidget(
                  text: 'Invite more friends',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    AppIconButton(iconName: messages, onPressed: () {}),
                    AppIconButton(iconName: whatsapp, onPressed: () {}),
                    AppIconButton(iconName: facebook, onPressed: () {}),
                    AppIconButton(iconName: share, onPressed: () {})
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _simpleTiles({
    required String titleName,
    required Function() onTap,
    IconData? icon,
  }) {
    return ListTile(
      onTap: onTap,
      tileColor: Theme.of(context).colorScheme.primaryContainer,
      leading: Icon(
        icon ?? Icons.contact_page,
        size: _iconSize,
      ),
      title: AppTextWidget(
        text: titleName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
