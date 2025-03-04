import 'package:flutter/material.dart';
import 'package:redefine_social_app/core/common/app_header_text.dart';
import 'package:redefine_social_app/core/common/app_text_widget.dart';

class WalletView extends StatelessWidget {
  const WalletView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppHeaderText(
          text: 'Wallet',
        ),
      ],
    );
  }
}
