import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';

class StarWidget extends StatefulWidget {
  const StarWidget({super.key});

  @override
  State<StarWidget> createState() => _StarWidgetState();
}

class _StarWidgetState extends State<StarWidget> {
  bool isstar = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          isstar = !isstar;
          setState(() {});
        },
        icon: Icon(
          isstar ? Icons.star : Icons.star_border,
          color: SharedColors.yellow,
        ));
  }
}
