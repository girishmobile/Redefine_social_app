import 'package:flutter/material.dart';

import 'package:redefine_social_app/core/common/app_image_view.dart';
import 'package:redefine_social_app/core/common/app_outline_button.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/screens/components/google_map_view.dart';

class EventDetailView extends StatefulWidget {
  const EventDetailView({super.key});

  @override
  State<EventDetailView> createState() => _EventDetailViewState();
}

class _EventDetailViewState extends State<EventDetailView> {
  String buttonText = "SOUNDS LIKE FUN, I'M IN";
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.transparent,
          expandedHeight: 250.0, // Height of the image
          floating: true, // App bar stays at the top
          pinned: true, // App bar remains visible when scrolling
          actionsIconTheme: IconThemeData(color: theme.colorScheme.primary),
          elevation: zero,
          backgroundColor: theme.colorScheme.surface,
          iconTheme: IconThemeData(color: theme.colorScheme.primary),
          flexibleSpace: FlexibleSpaceBar(
            title: AppTextWidget(
              text: "Event Details",
              style: theme.textTheme.headlineMedium,
            ),
            centerTitle: true,
            background: AppImageView(
              imageUrl: dummyImageUrl,
            ),
          ),
        ),

        // SliverList with sample items
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: columnSpacing / 2,
                children: [
                  AppTextWidget(
                    text: '[Event Name]',
                    style: theme.textTheme.headlineMedium,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 24,
                      ),
                      Expanded(
                        child: AppTextWidget(
                          text: 'Ahmedabad, Gujarat, India 380060',
                        ),
                      ),
                      AppOutlineButton(
                        onPressed: () {},
                        titleName: 'GET DIRECTION',
                        icon: Icons.near_me,
                      )
                    ],
                  ),
                  AppTextWidget(
                    text:
                        'World biggest contest cold play in Monera stadium, Ahmedabad, Gujarat',
                  ),
                  AppOutlineButton(
                    titleName: buttonText,
                    onPressed: () {
                      setState(() {
                        buttonText =
                            buttonText == "ACTUALLY, I DON'T WANT TO ATTEND"
                                ? "SOUNDS LIKE FUN, I'M IN"
                                : "ACTUALLY, I DON'T WANT TO ATTEND";
                      });
                    },
                  ),
                  rowItemWithIcon("[#0 guests]", Icons.person),
                  rowItemWithIcon("27-Feb-2025 5:32 PM", Icons.calendar_month),
                  AppTextWidget(
                    text: "Who's going?",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(
                    height: 94,
                    width: double.infinity,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: ten),
                        child: Column(
                          children: [
                            AppProfileImage(
                              width: 44,
                              height: 44,
                            ),
                            AppTextWidget(
                              text: "[Girish Chauhan]",
                              style: theme.textTheme.headlineSmall!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            AppTextWidget(
                              text: "[host]",
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  AppTextWidget(
                    text: "[Address]",
                    style: theme.textTheme.headlineMedium,
                  ),
                  rowItemWithIcon(
                    "[# Street Name,Unity, City, State, Zip code]",
                    Icons.location_on,
                  ),
                  GoogleMapView()
                ],
              ),
            ),
            childCount: 1, // Number of items
          ),
        ),
      ],
    ));
  }

  rowItemWithIcon(String text, IconData icon) {
    return Row(
      spacing: 8,
      children: [
        Icon(
          icon,
          size: 24,
        ),
        AppTextWidget(text: text)
      ],
    );
  }
}
/***

 */
