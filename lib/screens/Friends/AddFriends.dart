import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_icon_button.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';

class AddFriends extends StatefulWidget {
  const AddFriends({super.key});

  @override
  State<AddFriends> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
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
        physics: ScrollPhysics(),
        children: [
          simpleTiles(
            titleName: 'Add by Phone Number',
            onTap: () {
              Navigator.pushNamed(context, RouteName.addFriendByPhoneNumber);
            },
            icon: Icons.person_add_alt_1_rounded,
          ),
          Divider(
            thickness: 0.5,
            height: 0.25,
            color: Colors.grey,
            indent: 10,
            endIndent: 10,
          ),
          simpleTiles(
            titleName: 'Add from contacts',
            onTap: () {
              Navigator.pushNamed(context, RouteName.addContacts);
            },
            icon: Icons.contact_page,
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(containerPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
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

  simpleTiles({String? titleName, IconData? icon, Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      tileColor: Theme.of(context).colorScheme.primaryContainer,
      leading: Icon(
        icon ?? Icons.contact_page,
        size: 24,
      ),
      title: AppTextWidget(
        text: titleName ?? 'Add from contacts',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
