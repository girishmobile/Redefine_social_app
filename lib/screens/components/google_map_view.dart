import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: Colors.amber.withValues(alpha: 0.2),
      width: double.infinity,
      height: size.width * 0.6,
      child: Center(
        child: AppTextWidget(
          text: 'Google Map',
        ),
      ),
    );
  }
}
