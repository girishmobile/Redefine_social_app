import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        children: [
          AppTextWidget(
            text: "YOUR EVENT",
            style: Theme.of(context).textTheme.headlineMedium,
          )
        ],
      ),
    );
  }
}
