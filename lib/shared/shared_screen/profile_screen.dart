import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:io';

import '../../user/user_view/go_profile_screen.dart';
import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Map<String, dynamic>> sections = [
    {
      'title': 'Personal Information',
      'icon': Icons.person,
      'route': 'personal',
    },
    {
      'title': 'Settings',
      'icon': Icons.settings,
      'route': 'setting',
    },
    {
      'title': 'Notification',
      'icon': Icons.notifications,
      'route': 'notifiction',
    },
    {
      'title': 'Payments',
      'icon': Icons.payment,
      'route': 'payment',
    },
    {
      'title': 'Support',
      'icon': Icons.support,
      'route': 'support',
    },
    {
      'title': 'Privacy & Security',
      'icon': Icons.security,
      'route': 'privacy',
    },
  ];
  File? pickedImage;
  int notificationNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Profile',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Column(children: [
              Container(
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: pickedImage == null
                      ? DecorationImage(
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQORhBE_-B7JnAoMdNtLe2kthebd_BkOH1Vw&usqp=CAU'),
                          fit: BoxFit.fill,
                        )
                      : DecorationImage(
                          image: FileImage(pickedImage!), fit: BoxFit.fill),
                ),
                child: IconButton(
                  icon: Icon(Icons.add_a_photo),
                  color: SharedColors.mainGrayColor,
                  iconSize: 30,
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200.0,
                            child: ListTile(
                              leading: InkWell(
                                onTap: () {
                                  getImg(ImageSource.camera);
                                },
                                child: Text('Camera',
                                    style: SharedFonts.primaryBlackFont),
                              ),
                              trailing: InkWell(
                                onTap: () {
                                  getImg(ImageSource.gallery);
                                },
                                child: Text('Gallery',
                                    style: SharedFonts.primaryBlackFont),
                              ),
                            ),
                          );
                        });
                  },
                ),
              ),
              Text(
                'Mohamed Hosny',
                style: SharedFonts.primaryBlackFont,
              ),
              for (Map i in sections)
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: ListTile(
                    title: ListTile(
                        leading: Text(i['title'],
                            style: SharedFonts.primaryBlackFont),
                        trailing: i['title'] == 'Notification'
                            ? CircleAvatar(
                                radius: 15,
                                child: Text(i['title'] == 'Notification'
                                    ? '${notificationNumber}'
                                    : '...'),

//.int.parse(i['notification'].substring(i['notification'].last)
                                backgroundColor: SharedColors.mainGrayColor,
                              )
                            : null),
                    leading: Icon(i['icon'],
                        size: 20.0, color: SharedColors.blackColor),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: SharedColors.greyColor,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, i['route']);
                    },
                  ),
                ),
              Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => GoProfileScreen()));
                    },
                    child: Text(
                      'Log out',
                      style: SharedFonts.primaryBlackFont,
                    )),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  void getImg(ImageSource source) async {
    XFile? img = await ImagePicker().pickImage(source: source);
    try {
      setState(() {
        pickedImage = File(img!.path);
      });
    } catch (e) {}
  }
}
