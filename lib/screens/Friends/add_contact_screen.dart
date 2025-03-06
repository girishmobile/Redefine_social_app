import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_button_widget.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_search_bar.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/screens/Friends/contact_list.dart';

class Contact {
  final String name;
  Contact(this.name);
}

class AddContactScreen extends StatelessWidget {
  const AddContactScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppAppbar(
        titleName: 'ADD FROM CONTACTS',
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
              AppButtonWidget(
                onPressed: () {},
                text: "ADD OTHER NUMBER",
                width: size.width,
                textStyle: Theme.of(context).textTheme.labelMedium,
                btnStyle: commonButtonStyle(context: context),
              ),
              Expanded(child: ContactList()),
              AppButtonWidget(
                onPressed: () {},
                text: "NEXT",
                width: size.width,
                textStyle: Theme.of(context).textTheme.labelMedium,
                btnStyle: commonButtonStyle(context: context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
