import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_search_bar.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class Contact {
  final String name;
  Contact(this.name);
}

class AddContacts extends StatelessWidget {
  const AddContacts({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Contact> contacts = [
      Contact("Alice"),
      Contact("Adam"),
      Contact("Bob"),
      Contact("Charlie"),
      Contact("David"),
      Contact("Eve"),
      Contact("Frank"),
      Contact("George"),
      Contact("Henry"),
      Contact("Ivy"),
      Contact("Jack"),
    ];
    contacts.sort((a, b) => a.name.compareTo(b.name));
    // Group contacts by first letter
    Map<String, List<Contact>> groupedContacts = {};
    for (var contact in contacts) {
      String firstLetter = contact.name[0].toUpperCase();
      groupedContacts.putIfAbsent(firstLetter, () => []).add(contact);
    }

    List<String> headers = groupedContacts.keys.toList()..sort();
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppAppbar(
        titleName: 'Add by Contacts',
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(containerPadding),
          child: Column(
            spacing: columSpacing,
            children: [
              AppSearchBar(),
              SizedBox(
                height: 64,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: five),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppProfileImage(
                              height: 44,
                              width: 44,
                            ),
                            AppTextWidget(
                              text: '[Name]',
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: headers.length,
                  itemBuilder: (context, index) {
                    String header = headers[index];
                    List<Contact> contactsInGroup = groupedContacts[header]!;

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildHeader(header, textTheme),
                        ...contactsInGroup.map(
                            (contact) => _buildContactItem(contact, textTheme)),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(String header, TextTheme textTheme) {
    return Container(
      padding: EdgeInsets.all(8),
      width: double.infinity,
      color: Colors.grey[300],
      child: Text(header, style: textTheme.titleMedium),
    );
  }

  Widget _buildContactItem(Contact contact, TextTheme textTheme) {
    return ListTile(
      title: Text(contact.name, style: textTheme.titleMedium),
      leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: Text(
            contact.name[0],
            style: textTheme.titleMedium,
          )),
    );
  }
}
