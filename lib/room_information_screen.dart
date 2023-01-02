import 'package:agros/shared/shared_screen/travel_details.dart';
import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/fav_widget.dart';
import 'package:agros/shared/shared_widget/star_widget.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class RoomInformationScreen extends StatefulWidget {
  const RoomInformationScreen({super.key});

  @override
  State<RoomInformationScreen> createState() => _RoomInformationScreenState();
}

class _RoomInformationScreenState extends State<RoomInformationScreen> {
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
          onPressed: () {},
        ),
        title: Text(
          'Room information',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.file_upload_outlined,
              color: SharedColors.mainGrayColor,
            ),
            color: SharedColors.greyColor,
          ),
          FavWidget(20),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            height: 220,
            margin: EdgeInsets.only(bottom: 7.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://media-cdn.tripadvisor.com/media/photo-s/13/d8/ea/1b/a-room-at-the-beach.jpg'),
                    fit: BoxFit.fill)),
          ),
          ListTile(
            leading: StarWidget(),
            title: Text(
              'No reviews',
              style: SharedFonts.subGreyFont,
            ),
            trailing: Text(
              '\$ 45 \/ night',
              style: SharedFonts.subBlackFont,
            ),
          ),
          Text(
            'Premium double room with 1 bed',
            style: SharedFonts.primaryBlackFont,
          ),
          rowSection('  2 guests, 1-2 August ', Icons.person_outlined),
          rowSection(
              '  25 km from kamenets\n', Icons.photo_size_select_large_sharp),
          Text(
            '\n Descrecption \n',
            style: SharedFonts.primaryBlackFont,
          ),
          // Text('''
          // Room with balcony and lake view
          // Air conditioning and minibar
          // 1 double bed
          // Room Size 30  m2
          // Breakfast included
          // Coffee machine
          // Bathroom accessories
          // Slippers ''',softWrap: true,textAlign: TextAlign.left,
          // style: SharedFonts.primaryGreyFont,),

          Text(
            'Room with balcony and lake view',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            'Air conditioning and minibar',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            ' 1 double bed',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            ' Room Size 30  m2',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            'Breakfast included',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            'Coffee machine',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            ' Bathroom accessories',
            style: SharedFonts.primaryGreyFont,
          ),
          Text(
            'Slippers \n',
            style: SharedFonts.primaryGreyFont,
          ),
          TexxBottomWidget(
            () {},
            'Choose',
            SharedColors.white,
            SharedColors.mainGrayColor,
            13,
            MediaQuery.of(context).size.width * 1,
            50,
          )
        ],
      ),
    );
  }
  //Text('Room with balcony and lake view\n Air conditioning and minibar \n1 double bed\n Room Size 30  m2\n Breakfast included\n Coffee machine \nBathroom accessories\n Slippers ',softWrap: true,style: SharedFonts.primaryGreyFont,),
}
