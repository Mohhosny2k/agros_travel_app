import 'package:agros/shared/shared_screen/navigation_screen.dart';
import 'package:agros/shared/shared_screen/travel_details.dart';
import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BoardingModel {
  final String? image;
  final String? title;
  final String? body;
  final String? bottom;

  BoardingModel({
    required this.image,
    required this.title,
    required this.body,
    required this.bottom,
  });
}

class BrodingSreen extends StatefulWidget {
  // const BrodingSreen({super.key});
  var boradControl = PageController();
  bool isLast = false;
  List<BoardingModel> boardingList = [
    BoardingModel(
      image:
          'https://www.wavehill.org/uploads/pages/_sm/wave-hill_zoom-backgrounds_portrait_8.jpg',
      title: '\n\nWelecome \n to Agros',
      body: 'the world is full of amazing  things to discover\n',
      bottom: 'Lets Go',
    ),
    BoardingModel(
        image:
            'https://www.pixelstalk.net/wp-content/uploads/images1/Beautiful-house-pictures.jpg',
        title: '\n\nWe are\n the best',
        body: 'Agros is the \#1 free App for rest in nature\n',
        bottom: 'Continue'),
    BoardingModel(
        image: 'https://cdn.wallpapersafari.com/80/68/cvxyVb.jpg',
        title: '\n\nEasy\n Search',
        body: 'All place of nature  \#1 recreation in one App\n',
        bottom: 'Lets Start'),
  ];
  @override
  State<BrodingSreen> createState() => _BrodingSreenState();
}

class _BrodingSreenState extends State<BrodingSreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      body: PageView.builder(
        onPageChanged: (int index) {
          if (index == widget.boardingList.length - 1) {
            setState(() {
              widget.isLast = true;
            });
            print('last');
          } else {
            print('no last');
            setState(() {
              widget.isLast = false;
            });
          }
        },
        controller: widget.boradControl,
        itemBuilder: (context, index) =>
            BuildBoradingScreen(widget.boardingList[index]),
        itemCount: widget.boardingList.length,
      ),
    );
  }

  Widget BuildBoradingScreen(BoardingModel model) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage('${model.image}'), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: textSkip(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => TravelDetails()));
              }),
            ),
            Container(
              //10, 90, 50, 30 left, top, right, bottom
              padding: const EdgeInsets.fromLTRB(10, 200, 50, 30),
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${model.title}',
                    //style: SharedFonts.primaryBlackFont,
                    softWrap: true,

                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50.0,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${model.body}',
                    softWrap: true,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SmoothPageIndicator(
                        controller: widget.boradControl,
                        count: widget.boardingList.length,
                        effect: ExpandingDotsEffect(
                            activeDotColor: SharedColors.yellow,
                            dotColor: SharedColors.white,
                            dotHeight: 10,
                            expansionFactor: 4,
                            dotWidth: 10,
                            spacing: 5),
                      ),
                      // Spacer(),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: SharedColors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          fixedSize: Size(100, 50),
                        ),
                        onPressed: () {
                          if (widget.isLast) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => NavigationScreen()));
                            // Navigator.pushReplacement(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (_) => NavigationScreen()));
                          } else {
                            widget.boradControl.nextPage(
                                duration: Duration(milliseconds: 750),
                                curve: Curves.fastLinearToSlowEaseIn);
                          }
                        },
                        child: Text(
                          '${model.bottom}',
                          style: TextStyle(color: SharedColors.blackColor),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

TextButton textSkip(
  dynamic tap,
) {
  return TextButton(
      onPressed: tap,
      child: Text(
        'skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ));
}

IconButton rectangle(dynamic tap, Color color) {
  return IconButton(
      onPressed: tap,
      icon: Icon(
        Icons.rectangle_rounded,
        size: 26,
        color: color,
      ));
}
