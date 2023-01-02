import 'package:flutter/material.dart';
import '../../booking_list_screen.dart';
import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'My Booking',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: 2,
              child: Transform.rotate(
                angle: 18, //(180 * (pi / 180)), //180.0,
                child: Container(
                  //alignment: Alignment.center,
                  height: 90,
                  width: 210,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    // image: NetworkImage(
                    //     'https://previews.123rf.com/images/chrisdorney/chrisdorney1307/chrisdorney130700030/20726100-oops-rubber-stamp-over-a-white-background-.jpg'),
                    // fit: BoxFit.fill
                    image: AssetImage(
                      'assets/images/oops.png',
                    ),
                    //fit: BoxFit.fill,
                  )),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              '\nNo booked options\n',
              style: SharedFonts.subBlackFont,
            ),
            TexxBottomWidget(
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => BokkingListScreen()));
              },
              'Search',
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
