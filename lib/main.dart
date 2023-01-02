import 'package:agros/payment_screen.dart';
import 'package:agros/personal_information_screen.dart';
import 'package:agros/privacy_screen.dart';
import 'package:agros/setting_screen.dart';
import 'package:agros/shared/shared_screen/navigation_screen.dart';
import 'package:agros/shared/shared_screen/notification_screen.dart';
import 'package:agros/shared/shared_screen/splash_screen.dart';
import 'package:agros/support_screen.dart';
import 'package:agros/travel/travel_view/filter_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'brod_screen.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'onBorading': (context) => BrodingSreen(),
          // 'onBorading2': (context) => OnBoradingScreen2(),
          // 'onBorading3': (context) => onBoradingScreen3(),
          'filter': (context) => FilterScreen(),
          'personal': (context) => PersonalInformationScreen(),
          'setting': (context) => SettingScreen(),
          'notifiction': (context) => NotificationScreen(),
          'payment': (context) => PaymentScreen(),
          'support': (context) => SupportScreen(),
          'privacy': (context) => PrivacyScreen(),
        },
        debugShowCheckedModeBanner: false,
        home:SplashScreen(),
        );
  }
}
