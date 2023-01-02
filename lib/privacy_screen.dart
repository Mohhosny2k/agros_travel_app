import 'package:flutter/material.dart';

import 'shared/shared_theme/shared_colors.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('Privacy'),
      ),
    );
    ;
  }
}
