import 'package:agros/personal_information_screen.dart';
import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:agros/top_Search_home.dart';
import 'package:agros/travel/travel_view/search_result__screen.dart';
import 'package:flutter/material.dart';


class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchCon = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();
  bool Farmsteads = false;
  bool GuesHouses = false;
  bool Cottages = false;
  bool PlacesNearby = false;
  String Date = 'Dates';
  String guests = 'Add guests';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Start your vaction\n search ',
          softWrap: true,
          style: SharedFonts.primaryBlackFont,
        ),
        actions: [
          InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (_) => PersonalInformationScreen())),
            child: Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              height: 16,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            
         TopSearchHome(),
            TexxBottomWidget(
              () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => SearchResultScreen()));
              },
              'Search',
              SharedColors.white,
              SharedColors.mainGrayColor,
              13,
              MediaQuery.of(context).size.width * 1,
              50,
            ),
            Text(
              '\n Search History\n ',
              style: SharedFonts.primaryBlackFont,
            ),
           searchRecommandWidget('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkxjGop8CWzeq_cGQtqE2IFqtlNrQf4HEYvQ&usqp=CAU'),
            Text(
              ' Recommended\n ',
              style: SharedFonts.primaryBlackFont,
            ),
            searchRecommandWidget('https://elemental.green/wp-content/uploads/2021/09/Method-Homes-M-Series.jpeg'),
          ],
        ),
      ),
    );
  }
}

Container searchRecommandWidget(
  String image
) {
  return Container(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              width: 250.0,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: NetworkImage( //https://elemental.green/wp-content/uploads/2021/09/Method-Homes-M-Series.jpeg
                         image), // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkxjGop8CWzeq_cGQtqE2IFqtlNrQf4HEYvQ&usqp=CAU'
                      fit: BoxFit.fill)),
            ),
            Text(
              'Farmstead "Zabava"',
              style: SharedFonts.subBlackFont,
            ),
            Text(
              '40 km from Brest',
              style: SharedFonts.primaryGreyFont,
            )
          ],
        );
      },
    ),
  );
}
