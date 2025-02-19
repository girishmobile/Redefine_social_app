import 'package:flutter/material.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/models/contact.dart';

class ContactList extends StatelessWidget {
  ContactList({super.key});

  final List<Contact> contacts = [
    Contact("Alice"),
    Contact("Andrew"),
    Contact("Bob"),
    Contact("Brian"),
    Contact("Charlie"),
    Contact("David"),
    Contact("Eve"),
    Contact("Frank"),
    Contact("George"),
    Contact("Henry"),
    Contact("Ivy"),
    Contact("Jack"),
    Contact("Kevin"),
  ];

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    contacts.sort((a, b) => a.name.compareTo(b.name));
    // Group contacts by first letter
    Map<String, List<Contact>> groupedContacts = {};
    for (var contact in contacts) {
      String firstLetter = contact.name[0].toUpperCase();
      groupedContacts.putIfAbsent(firstLetter, () => []).add(contact);
    }

    return CustomScrollView(
      slivers: groupedContacts.entries.map((entry) {
        return SliverStickyHeader(
            header: _buildHeader(entry.key, textTheme),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  final contact = entry.value[index];
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey[400],
                      child: Text(
                        contact.name[0],
                        style: textTheme.bodyMedium,
                      ),
                    ),
                    title: AppTextWidget(
                      text: contact.name,
                      style: textTheme.bodyMedium,
                    ),
                    trailing: TextButton(
                        onPressed: () {},
                        child: Container(
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 12),
                          child: Text(
                            'INVITE',
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.surface,
                                fontSize: 10,
                                letterSpacing: 1.1),
                          ),
                        )),
                  );
                },
                childCount: entry.value.length,
              ),
            ));
      }).toList(),
    );
  }

  Widget _buildHeader(String letter, TextTheme textTheme) {
    return Container(
        color: Colors.grey[400], // Header background color
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        alignment: Alignment.centerLeft,
        child: AppTextWidget(
          text: letter,
          style: textTheme.headlineMedium,
        ));
  }
}
