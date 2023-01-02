import 'package:flutter/material.dart';

import 'shared/shared_theme/shared_colors.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        title: Text('support'),
      ),
    );
    ;
  }
}
