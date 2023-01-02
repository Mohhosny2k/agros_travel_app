import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';

class SocialWidget extends StatelessWidget {
  final dynamic? funFace;
  final dynamic? funGoog;

  const SocialWidget(this.funFace, this.funGoog, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
              onPressed: funFace!,
              icon: Icon(
                Icons.facebook,
                color: Colors.blue,
                size: 35,
              )),
          InkWell(
            onTap: funGoog!,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: SharedColors.white,
              backgroundImage: NetworkImage(
                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png'),
            ),
          ),
        ],
      ),
    );
  }
}
