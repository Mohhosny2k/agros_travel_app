import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/fav_widget.dart';
import 'package:flutter/material.dart';



class PictureScreen extends StatefulWidget {
  const PictureScreen({super.key});

  @override
  State<PictureScreen> createState() => _PictureScreenState();
}

class _PictureScreenState extends State<PictureScreen> {
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
      body: ListView(padding: EdgeInsets.all(10), children: [

        
        Container(
          margin: EdgeInsets.only(bottom: 10.0),
          height: 217,
          // width: 400,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://res.cloudinary.com/brickandbatten/image/upload/c_scale,w_372,h_248,dpr_2/f_auto,q_auto/v1641054317/wordpress_assets/27322-ModColonial-Cascades-a.jpg?_i=AA'),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
            //color: Colors.amber
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            height: 217,
            //color: Colors.tealAccent,
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: 4.0,
                    bottom: 4.0,
                    right: 5.0,
                  ),
                  height: 217,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://q-xx.bstatic.com/xdata/images/hotel/840x460/206535535.jpg?k=3ca52edcc0e0c12fe7e3622b061e0ecc486c39553eab24eb9b9994c45edff23c&o='),
                          fit: BoxFit.fill),
                      //color: Colors.pink
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 4.0, bottom: 4.0, left: 6.0),
                  height: 217,
                  width: 180,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5aTE9bsj4KCcv8ox9z4xRbwVW2FxK6wReww&usqp=CAU'),
                          fit: BoxFit.fill),
                      //color: Colors.blue
                      ),
                ),
                // Container(
                //   margin: EdgeInsets.only(
                //     top: 4.0,
                //     bottom: 4.0,
                //     left: 5.0,
                //   ),
                //   height: 217,
                //   width: 180,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           image: NetworkImage(
                //               'https://q-xx.bstatic.com/xdata/images/hotel/840x460/206535535.jpg?k=3ca52edcc0e0c12fe7e3622b061e0ecc486c39553eab24eb9b9994c45edff23c&o='),
                //           fit: BoxFit.fill),
                //       color: Colors.pink),
             //   ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10.0),
          height: 217,
          //width: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3ufSgpVcpK7ORK-Z-Ygvb8dPbcXL35Acizg&usqp=CAU'),
                  fit: BoxFit.fill),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0)),
            //  color: Colors.green
              ),
        ),
      ]),
    );
  }
}
