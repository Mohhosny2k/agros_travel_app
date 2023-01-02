import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool first = true;
  @override
  void didChangeDependencies() async {
    if (first) {
      first = false;
      await Future.delayed(Duration(seconds: 3), () async {
        Navigator.pushNamed(context, 'onBorading');
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.secondaryColor,
      body: Center(
        child: Icon(
          Icons.home,
          color: SharedColors.mainGrayColor,
          size: 250.0,
        ),
        //),
      ),
    );
  }
}
