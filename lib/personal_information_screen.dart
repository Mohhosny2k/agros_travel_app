import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class PersonalInformationScreen extends StatefulWidget {
  const PersonalInformationScreen({super.key});

  @override
  State<PersonalInformationScreen> createState() =>
      _PersonalInformationScreenState();
}

class _PersonalInformationScreenState extends State<PersonalInformationScreen> {
  //  TextEditingController searchCon = TextEditingController();
  bool gender = false;
  bool editable = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
        actions: [
          Container(
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
        ],
        centerTitle: true,
        title: Text(
          'Mohamed Hosny',
          style: SharedFonts.primaryBlackFont,
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            ListTile(
              title: Text('Name', style: SharedFonts.subBlackFont),
              leading: Icon(Icons.person, color: SharedColors.mainGrayColor),
              trailing: IconButton(
                icon: Icon(editable ? Icons.done : Icons.edit),
                color: SharedColors.mainGrayColor,
                iconSize: 20.0,
                onPressed: () {
                  setState(() {
                    editable = !editable;
                  });
                },
              ),
            ),
            CustomFieldWidget(FieldModel(
                controller: userNameController,
                icon: Icons.person,
                hintTxt: 'Bassel',
                type: TextInputType.name,
                enabel: editable)),
            ListTile(
              title: Text('Email', style: SharedFonts.subBlackFont),
              leading: Icon(Icons.email, color: SharedColors.mainGrayColor),
            ),
            CustomFieldWidget(FieldModel(
                controller: emailController,
                icon: Icons.email,
                hintTxt: 'email',
                type: TextInputType.emailAddress,
                enabel: editable)),
            ListTile(
              title: Text('Phone Number', style: SharedFonts.subBlackFont),
              leading: Icon(Icons.phone, color: SharedColors.mainGrayColor),
            ),
            CustomFieldWidget(FieldModel(
                controller: phoneController,
                icon: Icons.phone,
                hintTxt: '01010101101',
                type: TextInputType.number,
                enabel: editable)),
            Row(
              children: [
                Checkbox(
                    checkColor: SharedColors.white,
                    activeColor: SharedColors.mainGrayColor,
                    value: gender,
                    onChanged: editable
                        ? (x) {
                            setState(() {
                              gender = x!;
                            });
                          }
                        : (x) {}),
                Text(
                  'Male',
                  style: SharedFonts.subGreyFont,
                ),
                Checkbox(
                    checkColor: SharedColors.white,
                    activeColor: SharedColors.mainGrayColor,
                    value: !gender,
                    onChanged: editable
                        ? (x) {
                            setState(() {
                              gender = !x!;
                            });
                          }
                        : (x) {}),
                Text(
                  'FeMale',
                  style: SharedFonts.subGreyFont,
                ),
           
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*.1,
            ),
                 TexxBottomWidget(
                  () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => SearchResultScreen()));
                  },
                  'Logout',
                  SharedColors.white,
                  SharedColors.mainGrayColor,
                  13,
                  MediaQuery.of(context).size.width * 1,
                  50,
                ),
          ],
        ),
      ),
    );
    ;
  }
}
