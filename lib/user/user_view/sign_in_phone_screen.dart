// import 'package:flutter/material.dart';
// import 'package:travel_app/shared/shared_theme/shared_colors.dart';
// import 'package:travel_app/shared/shared_widget/custom_field_widget.dart';
// import 'package:travel_app/sign_in_email_screen.dart';
// import 'package:travel_app/sign_up_phone_screen.dart';

// import '../../shared/shared_theme/shared_fonts.dart';
// import '../../shared/shared_widget/social_widget.dart';
// import '../../shared/shared_widget/text_bottom_widget.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// class SignInPhoneScreen extends StatefulWidget {
//   // const SignInPhoneScreen({super.key});
//   TextEditingController codeNumber = TextEditingController();
//   TextEditingController phoneNumber = TextEditingController();
//   GlobalKey<FormState> codeNumberKey = GlobalKey<FormState>();
//   GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   var phonee = "1114553201";
//   static String vertify = "";

//   @override
//   State<SignInPhoneScreen> createState() => _SignInPhoneScreenState();
// }

// class _SignInPhoneScreenState extends State<SignInPhoneScreen> {
//   @override
//   void initState() {
//     widget.codeNumber.text = "+20";
//     super.initState();
//   }

//   bool editable = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: SharedColors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             size: 20,
//             color: SharedColors.greyColor,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Text(
//           'Sign in',
//           style: SharedFonts.primaryBlackFont,
//         ),
//         centerTitle: true,
//       ),
//       body: Form(
//         key: widget._formKey,
//         child: ListView(padding: EdgeInsets.all(10), children: [
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Sign in with phone\n',
//                 style: SharedFonts.primaryBlackFont,
//               ),
//               Text(
//                 'the activation code will be sent via SMS\n',
//                 softWrap: true,
//                 style: SharedFonts.primaryGreyFont,
//               ),
//               CustomFieldWidget(FieldModel(
//                 controller: widget.codeNumber,
//                 hintTxt: '\(02\)',
//                 key: widget.codeNumberKey,
//                 type: TextInputType.number,
//                 icon: null,
//                 enabel: editable,
//               )),
//               CustomFieldWidget(
//                 FieldModel(
//                   // onChanged: (value) {
//                   //   widget.phonee = value;
//                   // },
//                   controller: widget.phoneNumber,
//                   hintTxt: 'Phone Number',
//                   key: widget.phoneKey,
//                   icon: null,
//                   type: TextInputType.phone,
//                 ),
//               ),
//               // SizedBox(
//               //   height: 5,
//               // ),
//               TexxBottomWidget(
//                 () async {
//                   // if (widget._formKey.currentState!.validate() == false) {
//                   //   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   //     content: Text('Some Field Required',
//                   //         style: TextStyle(color: SharedColors.white)),
//                   //     duration: Duration(seconds: 3),
//                   //     backgroundColor: SharedColors.mainGrayColor,
//                   //   ));
//                   // }
//                   try {
//                     await FirebaseAuth.instance.verifyPhoneNumber(
//                       //widget.codeNumber.text+
//                       phoneNumber: '${widget.phonee}',
//                       verificationCompleted:
//                           (PhoneAuthCredential credential) {},
//                       verificationFailed: (FirebaseAuthException e) {},
//                       codeSent: (String verificationId, int? resendToken) {
//                         SignInPhoneScreen.vertify = verificationId;
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (_) => SignUpPhoneScreen()));
//                       },
//                       codeAutoRetrievalTimeout: (String verificationId) {},
//                     );
//                   } catch (e) {
//                     print(
//                         'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff');
//                   }
//                 },
//                 'Continue',
//                 Colors.white,
//                 SharedColors.mainGrayColor,
//                 13,
//                 MediaQuery.of(context).size.width * 1,
//                 50,
//               ),
//               // SizedBox(
//               //   height: 5,
//               // ),
//               Center(
//                 child: Text(
//                   'or',
//                   style: SharedFonts.subGreyFont,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//               // SizedBox(
//               //   height: 5,
//               // ),
//               TexxBottomWidget(
//                 () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (_) => SignInEmailScreen()));
//                 },
//                 'Sign in with Email',
//                 SharedColors.mainGrayColor,
//                 Colors.white,
//                 13,
//                 MediaQuery.of(context).size.width * 1,
//                 50,
//               ),
//               // SizedBox(
//               //   height: 5,
//               // ),
//               Center(child: SocialWidget(() {}, () {})),
//             ],
//           ),
//         ]),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';

import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/social_widget.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';


import '../../sign_up_phone_screen.dart';

class SignInPhoneScreen extends StatefulWidget {
 // const SignInPhoneScreen({super.key});
  static dynamic verify = '';
  @override
  State<SignInPhoneScreen> createState() => _SignInPhoneScreenState();
}

class _SignInPhoneScreenState extends State<SignInPhoneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController codeNumber = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
//   GlobalKey<FormState> codeNumberKey = GlobalKey<FormState>();
//   GlobalKey<FormState> phoneKey = GlobalKey<FormState>();
  @override
  void initState() {
    codeNumber.text = '+20';
    super.initState();
  }

 dynamic phonee = '';

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
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Sign in with phone\n',
                style: SharedFonts.primaryBlackFont,
              ),
              Text(
                'the activation code will be sent via SMS\n',
                softWrap: true,
                style: SharedFonts.primaryGreyFont,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 40,
                      child: TextField(
                        controller: codeNumber,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '|',
                      style: TextStyle(
                        fontSize: 33,
                        color: Colors.grey,
                      ),
                    ),
                    Expanded(
                        child: TextField(
                      onChanged: (value) {
                        try {
                          phonee = value;
                        } catch (e) {
                          print(
                              '**********************************************************');
                        }
                      },
                      controller: phoneNumber,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'phone',
                      ),
                    )),
                  ],
                ),
              ),
               SizedBox(
                height: 20,
              ),
              TexxBottomWidget(
                () async {
                  try {
                    await FirebaseAuth.instance.verifyPhoneNumber(
                      //widget.codeNumber.text+
                      phoneNumber: '${codeNumber.text + phonee}',
                      verificationCompleted:
                          (PhoneAuthCredential credential) {},
                      verificationFailed: (FirebaseAuthException e) {},
                      codeSent: (String verificationId, int? resendToken) {
                        SignInPhoneScreen.verify = verificationId;
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => SignUpPhoneScreen()));
                      },
                      codeAutoRetrievalTimeout: (String verificationId) {},
                    );
                  } catch (e) {
                    print(
                        'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffff');
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
        ]),
      ),
    );
  }
}
//77777777777777
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';

// import '../../sign_up_phone_screen.dart';
// //import 'package:phone_auth_project/otp_page.dart';


// class LogInPage extends StatefulWidget {
//   const LogInPage({Key? key}) : super(key: key);

//   @override
//   State<LogInPage> createState() => _LogInPageState();
// }

// class _LogInPageState extends State<LogInPage> {
//   final phoneController = TextEditingController();
//   bool showLoading = false;
//   String? verificationFailedMessage = "";

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: showLoading
//             ? const Center(
//                 child: CircularProgressIndicator(),
//               )
//             : Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Column(
//                   children: [
//                     const Spacer(),
//                     TextField(
//                       controller: phoneController,
//                       decoration: const InputDecoration(
//                         hintText: "Phone Number",
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 16,
//                     ),
//                     // FlatButton
//                    MaterialButton(
//                       onPressed: () async {

//                         setState(() {
//                           showLoading = true;
//                         });
//                         await FirebaseAuth.instance.verifyPhoneNumber(

//                           phoneNumber: phoneController.text,
//                           verificationCompleted: (PhoneAuthCredential credential) {},
//                           verificationFailed: (FirebaseAuthException e) {
//                             setState(() {
//                               showLoading = false;
//                             });
//                             setState(() {
//                               verificationFailedMessage = e.message ?? "error!";
//                             });
//                           },
//                           codeSent: (String verificationId, int? resendToken) {
//                             setState(() {
//                               showLoading = false;
//                             });
//                             Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => OTPPage(isTimeOut2: false , verificationId:verificationId)));
//                           },// SignUpPhoneScreen
//                           timeout: const Duration(seconds: 10),
//                           codeAutoRetrievalTimeout: (String verificationId) {

//                             Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => OTPPage(isTimeOut2: true ,verificationId:verificationId)));

//                           },
//                         );
//                       },
//                       child: const Text("SEND"),
//                       color: Colors.blue,
//                       textColor: Colors.white,
//                     ),
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Text(verificationFailedMessage!),
//                     Spacer(),
//                   ],
//                 ),
//               ));
//   }
// }
