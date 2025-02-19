import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_appbar.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_search_bar.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';

class AddContacts extends StatelessWidget {
  const AddContacts({super.key});

  @override
  Widget build(BuildContext context) {
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
              ListView.builder(
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
            ],
          ),
        ),
      ),
    );
  }
}
