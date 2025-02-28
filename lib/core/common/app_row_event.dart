import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/colors/color.dart';
import 'package:redefine_social_app/core/common/app_image_view.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppRowEvent extends StatelessWidget {
  const AppRowEvent({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Image.network(
            dummyImageUrl,
            height: 300,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          /// 📌 Title Text Over Image
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              color: theme.colorScheme.surface.withValues(alpha: 0.8),
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.centerLeft,
              child: Column(
                spacing: eight,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppTextWidget(
                    text: '[Event Name]',
                    style: theme.textTheme.headlineMedium,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        size: 28,
                      ),
                      AppTextWidget(
                        text: 'Locations',
                        style: theme.textTheme.headlineMedium,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 28,
                      ),
                      AppTextWidget(
                        text: '#01',
                        style: theme.textTheme.headlineSmall,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.calendar_month,
                        size: 28,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: AppTextWidget(
                          text: 'This is the event date and time for the user',
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/***
 */
