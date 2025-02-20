import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/router/route_name.dart';
import 'package:redefine_social_app/screens/Auth/forgot_password_view.dart';
import 'package:redefine_social_app/screens/Auth/login_view.dart';
import 'package:redefine_social_app/screens/Auth/SingupScreen.dart';
import 'package:redefine_social_app/screens/Facebook/LoginWithFacebook.dart';
import 'package:redefine_social_app/screens/Friends/add_contact_screen.dart';
import 'package:redefine_social_app/screens/Friends/add_friend_by_phone.dart';
import 'package:redefine_social_app/screens/Friends/add_friend_view.dart';
import 'package:redefine_social_app/screens/Friends/FriendList.dart';
import 'package:redefine_social_app/screens/Google/LoginWithGoogle.dart';
import 'package:redefine_social_app/screens/Home/Dashboard.dart';
import 'package:redefine_social_app/screens/Home/friends_activity_view.dart';
import 'package:redefine_social_app/screens/Home/home_view.dart';
import 'package:redefine_social_app/screens/Home/Notifications.dart';
import 'package:redefine_social_app/screens/SplashScreen.dart';

class RouteGenerated {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case RouteName.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case RouteName.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordView());
      case RouteName.facebookScreen:
        return MaterialPageRoute(builder: (_) => const LoginWithFacebook());
      case RouteName.googleScreen:
        return MaterialPageRoute(builder: (_) => const LoginWithGoogle());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case RouteName.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case RouteName.friendsActivity:
        return MaterialPageRoute(builder: (_) => const FriendsActivityView());
      case RouteName.notifications:
        return MaterialPageRoute(builder: (_) => const Notifications());
      case RouteName.friendList:
        return MaterialPageRoute(builder: (_) => const FriendList());
      case RouteName.addFriends:
        return MaterialPageRoute(builder: (_) => AddFriendView());
      case RouteName.addFriendByPhoneNumber:
        return MaterialPageRoute(builder: (_) => const AddFriendByPhone());
      case RouteName.addContacts:
        return MaterialPageRoute(builder: (_) => const AddContactScreen());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  }
}
