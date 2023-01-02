import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';
import '../shared_widget/text_bottom_widget.dart';


class RoomDetails extends StatefulWidget {
  const RoomDetails({super.key});

  @override
  State<RoomDetails> createState() => _RoomDetailsState();
}

class _RoomDetailsState extends State<RoomDetails> {
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
          'Room choice',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.2,
          margin: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 220,
                      margin: EdgeInsets.only(bottom: 7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20.0),
                              topRight: Radius.circular(20.0)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://webbox.imgix.net/images/fzsubovtlbhzbwmn/5bd6f3fa-a6dd-4890-b838-529eab15c2b2.jpg?auto=format,compress&fit=crop&crop=entropy'),
                              fit: BoxFit.fill)),
                    ),
                    Text(
                      'premium double room with\n 1 bed \n',
                      softWrap: true,
                      style: SharedFonts.primaryBlackFont,
                    ),
                    Text(
                      ' 1 double bed',
                      style: SharedFonts.subGreyFont,
                    ),
                    row('Room size', '30 m2'),
                    row('Breakfast', 'include'),
                    row('view', 'Lake'),
                    ListTile(
                      leading: Text(
                        ' \$45 /night',
                        style: SharedFonts.primaryBlackFont,
                      ),
                      trailing: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border:
                                Border.all(color: SharedColors.mainGrayColor)),
                        // child: TextButton(
                        //   style: TextButton.styleFrom(
                        //     backgroundColor: Colors.white,
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(10.0),
                        //     ),
                        //     fixedSize: Size(100, 50),
                        //   ),
                        //   onPressed: () {},
                        //   child: Text(
                        //     'choose',
                        //     style: TextStyle(color: SharedColors.mainGrayColor),
                        //   ),
                        // ),
                        child: TexxBottomWidget(
                            () {},
                            'choose',
                            SharedColors.mainGrayColor,
                            Colors.white,
                            10.0,
                            100,
                            50),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width * 1.1,
                      height: 220,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://res.cloudinary.com/maistra/image/upload/v1628582250/Proprietes/Collection%20/Rovinj/Lone%20/Units/Premium%20Room/M13_037_00171_k2zuzq.jpg'),
                            fit: BoxFit.fill,
                          )),
                    ),
                    TexxBottomWidget(
                      () {},
                      'Book',
                      Colors.white,
                      SharedColors.mainGrayColor,
                      20,
                      MediaQuery.of(context).size.width * 1,
                      50,
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }

  Padding row(String txt1, String txt2) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            txt1,
            style: SharedFonts.subGreyFont,
          ),
          Text(
            txt2,
            style: SharedFonts.subGreyFont,
          ),
        ],
      ),
    );
  }
}
