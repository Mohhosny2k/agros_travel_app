import 'package:flutter/material.dart';


import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/travel_hori_widget.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text('Favorite List',style: SharedFonts.primaryBlackFont,),
        centerTitle: true,
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
      ),
      body: Column(
        children: [
          SafeArea(
            top: true,
            child: ListTile(
              title: Text('6 Items', style: SharedFonts.primaryBlackFont),
            ),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) => TravelHoriWidget(),
            ),
          )
        ],
      ),
    );
  }
}
