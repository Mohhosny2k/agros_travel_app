import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:agros/shared/shared_widget/travel_hori_widget.dart';
import 'package:flutter/material.dart';


class BokkingListScreen extends StatefulWidget {
  const BokkingListScreen({super.key});

  @override
  State<BokkingListScreen> createState() => _BokkingListScreenState();
}

class _BokkingListScreenState extends State<BokkingListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
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
          'My Booking',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        Text(
          'Upcoming trips\n',
          style: SharedFonts.primaryBlackFont,
        ),
        TexxBottomWidget(
          () {},
          'No booked options',
          SharedColors.blackColor,
          SharedColors.white,
          10,
          MediaQuery.of(context).size.width * 1,
          50,
        ),
        Text(
          '\nLast trips\n',
          style: SharedFonts.primaryBlackFont,
        ),
        TravelHoriWidget(),
        TravelHoriWidget(),
      ]),
    );
  }
}
