import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';

class SignInEmailScreen extends StatefulWidget {
  const SignInEmailScreen({super.key});

  @override
  State<SignInEmailScreen> createState() => _SignInEmailScreenState();
}

class _SignInEmailScreenState extends State<SignInEmailScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> emailKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordKey = GlobalKey<FormState>();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
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
          'Sign in',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Form(
          key: _formKey,
          child: ListView(padding: EdgeInsets.all(10), children: [
            Text(
              'Sign in with Email\n',
              style: SharedFonts.primaryBlackFont,
            ),
            CustomFieldWidget(FieldModel(
                key: emailKey,
                controller: emailController,
                icon: Icons.email,
                labelTxt: 'Email Address',
                type: TextInputType.emailAddress)),
            CustomFieldWidget(FieldModel(
                key: passwordKey,
                controller: passwordController,
                icon: Icons.lock,
                labelTxt: 'Password',
                type: TextInputType.text,
                filedtype: FieldType.password,
                isScure: true)),
            Align(
              alignment: Alignment.bottomRight,
              child: InkWell(
                  onTap: () {},
                  child: Text('\nForgot Password?   \n',
                      style: SharedFonts.subGreyFont)),
            ),
            TexxBottomWidget(
              () {
                if (_formKey.currentState!.validate() == false) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Some Field Required',
                        style: TextStyle(color: Colors.white)),
                    duration: Duration(seconds: 3),
                    backgroundColor: SharedColors.redColor,
                  ));
                } else {
                  //  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => NavigationScreen()));
                }
              },
              'Log in',
              Colors.white,
              SharedColors.mainGrayColor,
              13,
              MediaQuery.of(context).size.width * 1,
              50,
            ),
          ])),
    );
  }
}
