import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class ConfirmationScren extends StatefulWidget {
  const ConfirmationScren({super.key});

  @override
  State<ConfirmationScren> createState() => _ConfirmationScrenState();
}

class _ConfirmationScrenState extends State<ConfirmationScren> {
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
          'Confirmation',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              color: SharedColors.backGroundColor,
              height: 350,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    //padding: EdgeInsets.all(8),
                    height: 220,
                    margin: EdgeInsets.only(bottom: 7.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTdAe_DT0qxnOYAASOMPM_uJw340VvpyO-akw&usqp=CAU'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    '1-2 august\n',
                    style: SharedFonts.primaryBlackFont,
                  ),
                  Text(
                    'Guest House "Emerald paradise"',
                    style: SharedFonts.primaryGreyFont,
                  ),
                  ListTile(
                    leading: Text(
                      '1 night ,2guest,2 rooms',
                      style: SharedFonts.primaryGreyFont,
                    ),
                    trailing: Text(
                      '\$90',
                      style: SharedFonts.primaryBlackFont,
                    ),
                  ),
                ],
              ),
            ),

//////////////////////////////
            Container(
              margin: EdgeInsets.all(8),
              color: SharedColors.backGroundColor,
              height: 350,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    
                    height: 220,
                    margin: EdgeInsets.only(bottom: 7.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            topRight: Radius.circular(15.0)),
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBjp01-rpqoFvF92LKE778Dw6TjgwJZ6roTA&usqp=CAU'),
                            fit: BoxFit.fill)),
                  ),
                  Text(
                    '1-2 august\n',
                    style: SharedFonts.primaryBlackFont,
                  ),
                  Text(
                    'Guest House "Emerald paradise"',
                    style: SharedFonts.primaryGreyFont,
                  ),
                  ListTile(
                    leading: Text(
                      '1 night ,2guest,2 rooms',
                      style: SharedFonts.primaryGreyFont,
                    ),
                    trailing: Text(
                      '\$90',
                      style: SharedFonts.primaryBlackFont,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Text(
                'Total\(USD\)',
                style: SharedFonts.primaryBlackFont,
              ),
              trailing: Text(
                '\$390',
                style: SharedFonts.primaryBlackFont,
              ),
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
          ],
        ),
      ),
    );
  }
}
