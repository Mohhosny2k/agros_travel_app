import 'package:agros/user/user_view/sign_in_screen.dart';
import 'package:flutter/material.dart';

import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';


class GoProfileScreen extends StatelessWidget {
  const GoProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'profile',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //alignment: Alignment.center,
              height: 90,
              width: 210,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/go.png'),
                ),
              ),
            ),
            Text(
              '\nSign in and start planning  your trip \n',
              softWrap: true,
              style: SharedFonts.subBlackFont,
            ),
            TexxBottomWidget(
              () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>SignInScreen()));
              },
              'sign in',
              SharedColors.white,
              SharedColors.mainGrayColor,
              10,
              MediaQuery.of(context).size.width / 1.1,
              50,
            )
          ],
        ),
      ),
    );
  }
}
