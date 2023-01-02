import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class SignUpEmailScreen extends StatefulWidget {
  const SignUpEmailScreen({super.key});

  @override
  State<SignUpEmailScreen> createState() => _SignUpEmailScreenState();
}

class _SignUpEmailScreenState extends State<SignUpEmailScreen> {
  TextEditingController firstNameCon = TextEditingController();
  TextEditingController lastNameCon = TextEditingController();
  TextEditingController emailCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> fNameKey = GlobalKey<FormState>();
  GlobalKey<FormState> lNameKey = GlobalKey<FormState>();
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  GlobalKey<FormState> passKey = GlobalKey<FormState>();
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
          'Sign up',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Text(
              'Sign up with Email\n',
              style: SharedFonts.primaryBlackFont,
            ),
            CustomFieldWidget(
              FieldModel(
                controller: firstNameCon,
                icon: null,
                hintTxt: 'First Name',
                type: TextInputType.name,
                key: fNameKey,
              ),
            ),
            CustomFieldWidget(
              FieldModel(
                controller: lastNameCon,
                icon: null,
                hintTxt: 'Last Name',
                type: TextInputType.name,
                key: lNameKey,
              ),
            ),
            CustomFieldWidget(
              FieldModel(
                controller: emailCon,
                icon: null,
                hintTxt: 'Email',
                type: TextInputType.emailAddress,
                key: emailKey,
              ),
            ),
            CustomFieldWidget(
              FieldModel(
                controller: passwordCon,
                icon: null,
                hintTxt: 'password',
                type: TextInputType.visiblePassword,
                key: passKey,
                isScure: true,
                filedtype: FieldType.password,
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height*.3,
            ),
            TexxBottomWidget(
              () {
                if (_formKey.currentState!.validate()==false) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content:Text('Some Field Required', style: TextStyle(color: SharedColors.white)), 
                    duration: Duration(seconds: 3),
                                      backgroundColor: SharedColors.mainGrayColor,)
                  );
                }
              },
              'Continue',
              Colors.white,
              SharedColors.mainGrayColor,
              13,
              MediaQuery.of(context).size.width * 1,
              50,
            ),
          ],
        ),
      ),
    );
  }
}
