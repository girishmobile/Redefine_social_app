import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/router/route_generate.dart';
import 'package:redefine_social_app/core/router/route_name.dart';
import 'package:redefine_social_app/theme/Theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redefine Social App',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: RouteGenerated.generateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
