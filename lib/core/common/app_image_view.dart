import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppImageView extends StatelessWidget {
  const AppImageView({
    super.key,
    this.imageUrl,
    this.height,
    this.width,
  });
  final double? width;
  final double? height;
  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width ?? 64,
        height: height ?? 64,
        child: imageUrl != null && imageUrl!.isNotEmpty
            ? Image.network(
                imageUrl!,
                fit: BoxFit.cover,
                width: width ?? 100,
                height: height ?? 100,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return loadAssetImage(name: placeholder, fit: BoxFit.cover);
                },
              )
            : loadAssetImage(
                name: placeholder,
                width: width ?? 64,
                height: height ?? 64,
                fit: BoxFit.cover,
              ));
  }
}
