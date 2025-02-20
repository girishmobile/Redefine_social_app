import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_profile_image.dart';
import 'package:redefine_social_app/core/common/app_scaffold.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/num_constants.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';
import 'package:redefine_social_app/core/router/route_name.dart';
import 'package:redefine_social_app/core/utility/date_time_helper.dart';
import 'package:redefine_social_app/screens/Home/account_view.dart';
import 'package:redefine_social_app/screens/Friends/friends_view.dart';
import 'package:redefine_social_app/screens/Home/home_view.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 1;
  final List<Widget> _pages = [
    const FriendsView(),
    const HomeView(),
    const AccountView()
  ];
  @override
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    DateTime now = DateTimeHelper.getCurrentDateTime();
    String fullDateTime =
        DateTimeHelper.formateDateTime(now, format: 'EEEE MMM d,yyyy hh:mm a');

    bool isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return AppScaffold(
      appBar: AppBar(
        elevation: zero5,
        backgroundColor: Theme.of(context).colorScheme.surface,
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        centerTitle: true,
        title: isPortrait
            ? loadAssetImage(name: applogo, width: size.width * zero4)
            : loadAssetImage(name: applogo, width: size.width * zero2),
        leading: Center(
          child: AppProfileImage(
            height: 44,
            width: 44,
            imageUrl: dummyImageUrl,
          ),
        ),
        actions: [
          Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 0,
            children: [
              IconButton(
                visualDensity: VisualDensity(horizontal: -4),
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.friendsActivity);
                },
                icon: Icon(
                  Icons.public_sharp,
                  size: 32,
                ),
                padding: EdgeInsets.zero,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteName.notifications);
                },
                icon: Icon(
                  Icons.notifications,
                  size: 32,
                ),
                padding: EdgeInsets.zero,
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: size.width,
              color: Theme.of(context).colorScheme.primary,
              child: AppTextWidget(
                text: fullDateTime,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: Colors.white),
              ),
            ),
            Expanded(
              // Ensures IndexedStack takes full height
              child: IndexedStack(
                index: _selectedIndex,
                children: _pages,
              ),
            )
          ],
        ),
      ),
      bottomNavigation: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Friends"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Account"),
        ],
      ),
      floatingActionButton: _selectedIndex == 1
          ? FloatingActionButton(
              onPressed: () {},
              backgroundColor: Theme.of(context).primaryColor,
              shape: CircleBorder(),
              child: Icon(Icons.add),
            )
          : null,
    );
  }
}
