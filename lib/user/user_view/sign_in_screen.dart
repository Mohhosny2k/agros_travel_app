import 'dart:ui';

import 'package:agros/user/user_view/sign_in_phone_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/social_widget.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';
import '../../sign_up_email_screen.dart';
import '../../sign_up_phone_screen.dart';



class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'skip',
              style: TextStyle(
                color: SharedColors.greyColor,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Text(
            'Sign in and plan your trip\n',
            style: SharedFonts.primaryBlackFont,
          ),
          Text(
            'By continuing,you accept our Terms of use and privacy statement\n',
            softWrap: true,
            style: SharedFonts.primaryGreyFont,
          ),
          TexxBottomWidget(
            () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpPhoneScreen()));//SignInPhoneScreen() LogInPage()
            },
            'sign in',
            Colors.white,
            SharedColors.mainGrayColor,
            13,
            MediaQuery.of(context).size.width * 1,
            50,
          ),
          SizedBox(
            height: 35,
          ),
          Text(
            'Don\'t you have an account?\nRegister in a convenient way\n',
            softWrap: true,
            style: SharedFonts.primaryGreyFont,
            textAlign: TextAlign.center,
          ),
          TexxBottomWidget(
            () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUpPhoneScreen()));//SignUpPhoneScreen()LogInPage()
            },
            'Sign up with phone',
            SharedColors.mainGrayColor,
            Colors.white,
            13,
            MediaQuery.of(context).size.width * 1,
            50,
          ),
          SizedBox(
            height: 15,
          ),
          TexxBottomWidget(
            () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUpEmailScreen()));
            },
            'Sign up with Email',
            SharedColors.mainGrayColor,
            Colors.white,
            13,
            MediaQuery.of(context).size.width * 1,
            50,
          ),
          SizedBox(
            height: 5,
          ),
          SocialWidget(() {}, () {}),
        ],
      ),
    );
  }
}
