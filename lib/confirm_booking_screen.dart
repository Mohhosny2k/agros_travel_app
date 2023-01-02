import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class ConfirmBookingScreen extends StatelessWidget {
  const ConfirmBookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/greendoor.jpg'),
              ),
            ),
          ),
          Text(
            '\nyour booking has been \n      successfuly paid\n',
            style: SharedFonts.subBlackFont,
            softWrap: true,
          ),
          TexxBottomWidget(
            () {},
            'Return the main page',
            SharedColors.white,
            SharedColors.mainGrayColor,
            20,
            MediaQuery.of(context).size.width * 1,
            50,
          ),
          SizedBox(
            height: 8,
          ),
          TexxBottomWidget(
            () {},
            'My Booking',
            SharedColors.white,
            SharedColors.mainGrayColor,
            20,
            MediaQuery.of(context).size.width * 1,
            50,
          ),
        ]),
      ),
    );
  }
}
