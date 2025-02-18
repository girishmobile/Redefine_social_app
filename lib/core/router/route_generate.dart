import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/router/route_name.dart';
import 'package:redefine_social_app/screens/Auth/ForgotPassword.dart';
import 'package:redefine_social_app/screens/Auth/LoginScreen.dart';
import 'package:redefine_social_app/screens/Auth/SingupScreen.dart';
import 'package:redefine_social_app/screens/Facebook/LoginWithFacebook.dart';
import 'package:redefine_social_app/screens/Friends/AddFriends.dart';
import 'package:redefine_social_app/screens/Friends/FriendList.dart';
import 'package:redefine_social_app/screens/Google/LoginWithGoogle.dart';
import 'package:redefine_social_app/screens/Home/Dashboard.dart';
import 'package:redefine_social_app/screens/Home/FriendsActivity.dart';
import 'package:redefine_social_app/screens/Home/HomeScreen.dart';
import 'package:redefine_social_app/screens/Home/Notifications.dart';
import 'package:redefine_social_app/screens/SplashScreen.dart';

class RouteGenerated {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const Splashscreen());
      case RouteName.loginScreen:
        return MaterialPageRoute(builder: (_) => const Loginscreen());
      case RouteName.signupScreen:
        return MaterialPageRoute(builder: (_) => const SignupScreen());
      case RouteName.forgotPasswordScreen:
        return MaterialPageRoute(builder: (_) => const ForgotPassword());
      case RouteName.facebookScreen:
        return MaterialPageRoute(builder: (_) => const LoginWithFacebook());
      case RouteName.googleScreen:
        return MaterialPageRoute(builder: (_) => const LoginWithGoogle());
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteName.dashboard:
        return MaterialPageRoute(builder: (_) => const Dashboard());
      case RouteName.friendsActivity:
        return MaterialPageRoute(builder: (_) => const FriendsActivity());
      case RouteName.notifications:
        return MaterialPageRoute(builder: (_) => const Notifications());
      case RouteName.friendList:
        return MaterialPageRoute(builder: (_) => const FriendList());
      case RouteName.addFriends:
        return MaterialPageRoute(builder: (_) => AddFriends());
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
