import 'package:flutter/material.dart';

import '../../picture_screen.dart';
import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';
import '../shared_widget/fav_widget.dart';
import '../shared_widget/star_widget.dart';
import '../shared_widget/text_bottom_widget.dart';

class TravelDetails extends StatefulWidget {
  //const TravelDetails({super.key});
  var imageControl = PageController();
  @override
  State<TravelDetails> createState() => _TravelDetailsState();
}
class _TravelDetailsState extends State<TravelDetails> {
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
          'Farmstead zabava',
          style: SharedFonts.primaryBlackFont,
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: MediaQuery.of(context).size.width * 1.2,
            margin: EdgeInsets.all(10.0),
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: 
                        (_)=>PictureScreen()));
                      },
                      child: Container(
                        alignment: Alignment.bottomRight,
                        height: 220,
                        margin: EdgeInsets.only(bottom: 7.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0)),
                            image: DecorationImage(
                                image: NetworkImage(
                                    'https://res.cloudinary.com/brickandbatten/image/upload/c_scale,w_372,h_248,dpr_2/f_auto,q_auto/v1641054317/wordpress_assets/27322-ModColonial-Cascades-a.jpg?_i=AA'),
                                fit: BoxFit.fill)),
                        child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(4),
                          height: 25,
                          width: 49,
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: SharedColors.mainGrayColor),
                          child: Text(
                            ' 1/4',
                            style: TextStyle(color: SharedColors.white),
                          ),
                        ),
                      ),
                    ),
                  
                    ListTile(
                      leading: StarWidget(),
                      title: Text(
                        '4.96   \(2 reviews\)',
                        style: SharedFonts.subGreyFont,
                      ),
                      trailing: Text(
                        '\$300/night  ',
                      ),
                    ),
                    Text(
                      'Farmstead zabava \n',
                      style: SharedFonts.primaryBlackFont,
                    ),
                    rowSection(' 10 gets,1-2 August ', Icons.person_outlined),
                    rowSection('  40 km from Best  \n',
                        Icons.photo_size_select_large_sharp),
                    Text(
                      'Descrecption \n',
                      style: SharedFonts.primaryBlackFont,
                    ),

                    Text(
                      '''We invite you to spend an unforgettable vacation away from the hustle and bustle of the city.The estate is located in the forest with good access, on the highway Kobrin - Malorita. It was created on a wonderful gla.. \n''',
                      softWrap: true,
                    ),
                    Text(
                      'Farmstead zabava \n',
                      style: SharedFonts.primaryBlackFont,
                    ),
                    TexxBottomWidget(
                      () {},
                      'Book',
                      SharedColors.white,
                      SharedColors.mainGrayColor,
                      20,
                      MediaQuery.of(context).size.width * 1,
                      50,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

Padding rowSection(String title, IconData icon) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
    child: Row(
      children: [
        Icon(icon, color: SharedColors.mainGrayColor, size: 20),
        Text('$title', style: SharedFonts.subGreyFont)
      ],
    ),
  );
}

Container imageSection(String image) {
  return Container(
    height: 220,
    margin: EdgeInsets.only(bottom: 7.0),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        image: DecorationImage(
            image: NetworkImage(' ${image}'), fit: BoxFit.fill)),
  );
}
