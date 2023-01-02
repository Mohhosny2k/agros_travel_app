import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';


class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: SharedColors.greyColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Notification',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        Text(
          'All notifications\n',
          style: SharedFonts.subBlackFont,
        ),
        Container(
          height: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Booking confirmed\n',
              style: SharedFonts.subBlackFont,
            ),
            Text(
              'Your booking at Farmstead "Zabava"',
              style: SharedFonts.subGreyFont,
            ),
            Text(
              'Successfully verified',
              style: SharedFonts.subGreyFont,
            ),
            Text(
              '24.07.2022',
              style: SharedFonts.subGreyFont,
            ),
          ]),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 150,
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Booking confirmed\n',
              style: SharedFonts.subBlackFont,
            ),
            Text(
              'Your booking at Farmstead "Zabava"',
              style: SharedFonts.subGreyFont,
            ),
            Text(
              'Successfully verified',
              style: SharedFonts.subGreyFont,
            ),
            Text(
              '24.07.2022',
              style: SharedFonts.subGreyFont,
            ),
          ]),
        ),
      ]),
    );
  }
}
