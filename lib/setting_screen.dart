import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
          'Setting',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: [
        ListTile(
          leading: Text(
            'Language',
            style: SharedFonts.subBlackFont,
          ),
          trailing: Text(
            'English',
            style: SharedFonts.subGreyFont,
          ),
          onTap: (){},
        ),
        Divider(
          color: SharedColors.greyColor,
          height: 10,
          thickness: .5,
        ),
          ListTile(
          leading: Text(
            'Currency',
            style: SharedFonts.subBlackFont,
          ),
          trailing: Text(
            'us dolar',
            style: SharedFonts.subGreyFont,
          ),
            onTap: (){},
        ),
        Divider(
          color: SharedColors.greyColor,
          height: 10,
          thickness: .5,
        ),
        
          ListTile(
          leading: Text(
            'Notification',
            style: SharedFonts.subBlackFont,
          ),
          trailing: Icon(Icons.arrow_forward_ios_rounded),
            onTap: (){},
        ),
        Divider(
          color: SharedColors.greyColor,
          height: 10,
          thickness: .5,
        ),
          ListTile(
          leading: Text(
            'Safty',
            style: SharedFonts.subBlackFont,
          ),
         trailing: Icon(Icons.arrow_forward_ios_rounded),
           onTap: (){},
        ),
        Divider(
          color: SharedColors.greyColor,
          height: 10,
          thickness: .5,
        ),
      ]),
    );
  }
}
