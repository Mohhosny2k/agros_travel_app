import 'package:flutter/material.dart';

import '../shared_theme/shared_fonts.dart';
import 'fav_widget.dart';


class TravelHoriWidget extends StatefulWidget {
  const TravelHoriWidget({super.key});

  @override
  State<TravelHoriWidget> createState() => _TravelHoriWidgetState();
}

class _TravelHoriWidgetState extends State<TravelHoriWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Container(
              width: 125.0,
              height: 150,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://thumbor.forbes.com/thumbor/fit-in/x/https://www.forbes.com/home-improvement/wp-content/uploads/2022/07/featured-image-greenhouse.jpeg.jpg'),
                      fit: BoxFit.fill)),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Farmsted \"Skazka\"',
                        softWrap: true,
                        style: SharedFonts.primaryBlackFont,
                      ),
                      FavWidget(20)
                    ],
                  ),
                  Text('15 km from kobrin\n'),
                  Text('10 guests 1-2 August\n'),
                  Text('\$ 290 \/ night\n')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
