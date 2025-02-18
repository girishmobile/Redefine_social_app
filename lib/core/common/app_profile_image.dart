import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/components/components.dart';
import 'package:redefine_social_app/core/constant/string_utility.dart';

class AppProfileImage extends StatelessWidget {
  const AppProfileImage({
    super.key,
    this.height,
    this.width,
    this.imageUrl,
  });

  final double? height;
  final double? width;
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 100,
      height: height ?? 100,
      decoration: BoxDecoration(
          color: Colors.grey[100],
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey, width: 1)),
      child: ClipOval(
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
                fit: BoxFit.cover,
                height: height,
                width: width,
              ),
      ),
    );
  }
}
/**
 * Transform.scale(
        scale: scale ?? 1,
        child: loadAssetImage(
          name: placeholder,
          fit: BoxFit.cover,
        ),
      ),
 */
