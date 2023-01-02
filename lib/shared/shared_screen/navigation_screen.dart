import 'package:agros/shared/shared_screen/profile_screen.dart';
import 'package:flutter/material.dart';

import '../../search_screen.dart';
import '../../user/user_view/booking_screen.dart';
import '../../user/user_view/fav_screen.dart';
import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';


class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int selectedScreen = 0;
  final List screens = [
    SearchScreen(),
    FavScreen(),
    BookingScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.backGroundColor,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          navItem(
            'search',
            Icons.search,
          ),
          navItem('Favorite', Icons.favorite),
          navItem('Booking', Icons.book),
          navItem('Profile', Icons.person),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        currentIndex: selectedScreen,
        onTap: (i) {
          setState(() {
            selectedScreen = i;
          });
        },
        selectedIconTheme:
            IconThemeData(color: SharedColors.mainGrayColor, size: 20),
        unselectedIconTheme:
            IconThemeData(color: SharedColors.greyColor, size: 18.0),
        selectedLabelStyle: SharedFonts.subBlackFont,
        unselectedLabelStyle: SharedFonts.subGreyFont,
        selectedItemColor: SharedColors.mainGrayColor,
        unselectedItemColor: SharedColors.greyColor,
        type: BottomNavigationBarType.fixed,
      ),
      body: screens[selectedScreen],
    );
  }

  BottomNavigationBarItem navItem(String title, IconData icon) {
    return BottomNavigationBarItem(icon: Icon(icon), label: title);
  }
}
