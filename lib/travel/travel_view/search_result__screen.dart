import 'package:flutter/material.dart';

import '../../map_screen.dart';
import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/travel_hori_widget.dart';


class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Searching results',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SafeArea(
            top: true,
            child: Container(
              height: 50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    search(() {}, Icons.swap_vert_sharp, ' Sorting'),
                    search(() {
                      Navigator.pushNamed(context, 'filter');
                    }, Icons.filter, ' Filter'),
                    search(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => MapScreen()));
                    }, Icons.location_city_sharp, ' Map')
                  ]),
            ),
          ),
          // Flexible(
          //   child: Container(
          //     //height: 500,
          //     // child: ListView.builder(
          //     //     scrollDirection: Axis.vertical,
          //     //     itemCount: 5,
          //     //     itemBuilder: (context, index) {
          //     //       return TravelHoriWidget();
          //     //     }),
          //   ),
          // ),
          Flexible(
              child: ListView.builder(
            itemCount: 6,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => TravelHoriWidget(),
          )),

          // TravelHoriWidget(),
          // TravelHoriWidget(),
          // TravelHoriWidget(),
          // TravelHoriWidget(),
        ],
      ),
    );
  }

  InkWell search(dynamic tap, IconData icon, String txt) {
    return InkWell(
      onTap: tap,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            color: SharedColors.mainGrayColor,
            size: 20,
          ),
          Text(
            txt,
            style: TextStyle(color: SharedColors.blackColor, fontSize: 20),
          )
        ],
      ),
    );
  }
}
