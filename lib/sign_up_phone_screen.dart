// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:travel_app/shared/shared_theme/shared_colors.dart';
// import 'package:travel_app/shared/shared_theme/shared_fonts.dart';
// import 'package:travel_app/shared/shared_widget/custom_field_widget.dart';
// import 'package:travel_app/shared/shared_widget/text_bottom_widget.dart';
// import 'package:travel_app/user/user_view/sign_in_phone_screen.dart';

// class SignUpPhoneScreen extends StatefulWidget {
//   const SignUpPhoneScreen({super.key});

//   @override
//   State<SignUpPhoneScreen> createState() => _SignUpPhoneScreenState();
// }

// class _SignUpPhoneScreenState extends State<SignUpPhoneScreen> {
//   TextEditingController oneNumCode = TextEditingController();
//   TextEditingController twoNumCode = TextEditingController();
//   TextEditingController threeNumCode = TextEditingController();
//   TextEditingController fourNumCode = TextEditingController();

//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   GlobalKey<FormState> oneNumKey = GlobalKey<FormState>();
//   GlobalKey<FormState> twoNumKey = GlobalKey<FormState>();
//   GlobalKey<FormState> threeNumKey = GlobalKey<FormState>();
//   GlobalKey<FormState> fourNumKey = GlobalKey<FormState>();
//   var code = "";
//   FirebaseAuth auth = FirebaseAuth.instance;
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
//           'Sign up',
//           style: SharedFonts.primaryBlackFont,
//         ),
//         centerTitle: true,
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(padding: EdgeInsets.all(10), children: [
//           Text(
//             'Enter code from SMS\n',
//             style: SharedFonts.primaryBlackFont,
//           ),
//           Text(
//             'Enter sent code to your number\n +375 29 172 45 67\n',
//             softWrap: true,
//             style: SharedFonts.primaryGreyFont,
//           ),
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Container(
//                 margin: EdgeInsets.all(5),
//                 height: 80,
//                 width: 35,
//                 // color: Colors.cyanAccent,
//                 child: TextFormField(
//                   validator: (x) {
//                     if (x!.isEmpty) {
//                       return 'This field Reqired';
//                     }
//                   },
//                   maxLines: 1,
//                   keyboardType: TextInputType.number,
//                   maxLength: 1,
//                   minLines: 1,
//                   controller: oneNumCode,
//                   key: oneNumKey,
//                   decoration: InputDecoration(
//                     border: fieldBorder(SharedColors.greyColor),
//                     errorBorder: fieldBorder(SharedColors.redColor),
//                     focusedBorder: fieldBorder(SharedColors.greyColor),
//                     focusedErrorBorder: fieldBorder(SharedColors.redColor),
//                     disabledBorder: fieldBorder(Colors.transparent),
//                     //     border: OutlineInputBorder(
//                     //    borderRadius: BorderRadius.circular(10),
//                     //      borderSide: BorderSide(width: 1.0, color: SharedColors.mainGrayColor)
//                     //   ),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5),
//                 height: 80,
//                 width: 35,
//                 //color: Colors.yellow,
//                 child: TextFormField(
//                   validator: (x) {
//                     if (x!.isEmpty) {
//                       return 'This field Reqired';
//                     }
//                   },
//                   maxLines: 1,
//                   keyboardType: TextInputType.number,
//                   maxLength: 1,
//                   minLines: 1,
//                   controller: twoNumCode,
//                   key: twoNumKey,
//                   decoration: InputDecoration(
//                     border: fieldBorder(SharedColors.greyColor),
//                     errorBorder: fieldBorder(SharedColors.redColor),
//                     focusedBorder: fieldBorder(SharedColors.greyColor),
//                     focusedErrorBorder: fieldBorder(SharedColors.redColor),
//                     disabledBorder: fieldBorder(Colors.transparent),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5),
//                 height: 80,
//                 width: 35,
//                 //  color: Colors.teal,
//                 child: TextFormField(
//                   validator: (x) {
//                     if (x!.isEmpty) {
//                       return 'This field Reqired';
//                     }
//                   },
//                   maxLines: 1,
//                   keyboardType: TextInputType.number,
//                   maxLength: 1,
//                   minLines: 1,
//                   controller: threeNumCode,
//                   key: threeNumKey,
//                   decoration: InputDecoration(
//                     border: fieldBorder(SharedColors.greyColor),
//                     errorBorder: fieldBorder(SharedColors.redColor),
//                     focusedBorder: fieldBorder(SharedColors.greyColor),
//                     focusedErrorBorder: fieldBorder(SharedColors.redColor),
//                     disabledBorder: fieldBorder(Colors.transparent),
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.all(5),
//                 height: 80,
//                 width: 35,
//                 //color: Colors.pink,
//                 child: TextFormField(
//                   validator: (x) {
//                     if (x!.isEmpty) {
//                       return 'This field Reqired';
//                     }
//                   },
//                   maxLines: 1,
//                   keyboardType: TextInputType.number,
//                   maxLength: 1,
//                   minLines: 1,
//                   controller: fourNumCode,
//                   key: fourNumKey,
//                   decoration: InputDecoration(
//                     border: fieldBorder(SharedColors.greyColor),
//                     errorBorder: fieldBorder(SharedColors.redColor),
//                     focusedBorder: fieldBorder(SharedColors.greyColor),
//                     focusedErrorBorder: fieldBorder(SharedColors.redColor),
//                     disabledBorder: fieldBorder(Colors.transparent),
//                   ),
//                 ),
//                 //   child: CustomFieldWidget(
//                 //  FieldModel(
//                 //      controller: fourNumCode,
//                 //       key: fourNumKey,
//                 //       mLe: 1,
//                 //       mli: 1,
//                 //       type: TextInputType.number,
//                 //  )
//                 //   ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: MediaQuery.of(context).size.height * .2,
//           ),
//           TexxBottomWidget(
//             () async {
//               if (_formKey.currentState!.validate() == false) {
//                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                   content: Text('Some Field Required',
//                       style: TextStyle(color: SharedColors.white)),
//                   duration: Duration(seconds: 3),
//                   backgroundColor: SharedColors.mainGrayColor,
//                 ));
//               }
//               try {
//                 PhoneAuthCredential credential = PhoneAuthProvider.credential(
//                   verificationId: SignInPhoneScreen.vertify, smsCode: code);

//               // Sign the user in (or link) with the credential
//               await auth.signInWithCredential(credential);
//               } catch (e) {
//                 print('wrooooooooooooooooooooooooo');
//               }
//             },
//             'Confirm Code',
//             SharedColors.mainGrayColor,
//             Colors.white,
//             13,
//             MediaQuery.of(context).size.width * 1,
//             50,
//           ),
//         ]),
//       ),
//     );
//   }

//   OutlineInputBorder fieldBorder(Color color) {
//     return OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(width: 1.0, color: color));
//   }
// }



import 'package:agros/shared/shared_screen/navigation_screen.dart';
import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:agros/user/user_view/sign_in_phone_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class SignUpPhoneScreen extends StatefulWidget {
  const SignUpPhoneScreen({super.key});

  @override
  State<SignUpPhoneScreen> createState() => _SignUpPhoneScreenState();
}

class _SignUpPhoneScreenState extends State<SignUpPhoneScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
 dynamic code ='111111';
  FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
        child: ListView(padding: EdgeInsets.all(10), children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter code from SMS\n',
                style: SharedFonts.primaryBlackFont,
              ),
              Text(
                'Enter sent code to your number\n +375 29 172 45 67\n',
                softWrap: true,
                style: SharedFonts.primaryGreyFont,
              ),
              Row(
                children: [],
              ),
              Pinput(
                // defaultPinTheme: defaultPinTheme,
                // focusedPinTheme: focusedPinTheme,
                // submittedPinTheme: submittedPinTheme,
                // validator: (s) {
                //   return s == '2222' ? null : 'Pin is incorrect';
                // },
                length: 6,
                //pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                showCursor: true,
                onChanged: (value) {
                  value = code;
                },
                // onCompleted: (pin) => print(pin),
              ),
              SizedBox(
                height: 20,
              ),
              TexxBottomWidget(
                () async {

                  try {
                    PhoneAuthCredential credential =
                        PhoneAuthProvider.credential(
                            verificationId: SignInPhoneScreen.verify,
                            smsCode: code);

                    // Sign the user in (or link) with the credential
                    await auth.signInWithCredential(credential);
                     Navigator.push(context,
                      MaterialPageRoute(builder: (_) => NavigationScreen()));
                  } catch (e) {
                    print('wrooooooooooooooooooooooooo----*************************************************');
                  }
                 
                },
                'Confirm Code',
                SharedColors.mainGrayColor,
                Colors.white,
                13,
                MediaQuery.of(context).size.width * 1,
                50,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (_) => SignInPhoneScreen()),
                        (route) => false);
                  },
                  child: Text(
                    'Edit Phone Number ?',
                    style: TextStyle(color: Colors.black),
                  )),
            ],
          ),
        ]),
      ),
    );
  }
}
//7777



//import 'dart:async';

// import 'package:agros/shared/shared_screen/navigation_screen.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// //import 'package:phone_auth_project/home_page.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';



// class OTPPage extends StatefulWidget {
//   OTPPage({required this.verificationId, required this.isTimeOut2});
//   final String verificationId;
//   final bool isTimeOut2;

//   @override
//   State<OTPPage> createState() => _OTPPageState();
// }

// class _OTPPageState extends State<OTPPage> {

//   final otpController = TextEditingController();
//   bool showLoading = false;
//   String verificationFailedMessage = "";
//   final FirebaseAuth auth = FirebaseAuth.instance;

//    String myVerificationId = "";
//    bool isTimeOut = false;


//   StreamController<ErrorAnimationType>? errorController;

//   bool hasError = false;
//   String currentText = "";
//   final formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     errorController = StreamController<ErrorAnimationType>();
//     myVerificationId = widget.verificationId;
//     isTimeOut = widget.isTimeOut2;
//     super.initState();
//   }

//   @override
//   void dispose() {
//     errorController!.close();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(body:
//     showLoading
//         ? const Center(
//       child: CircularProgressIndicator(),
//     )
//         :
//     Padding(
//       padding: const EdgeInsets.all(12.0),
//       child: Container(
//         // height: 300,
//         child: ListView(
//           children: <Widget>[
//             SizedBox(height: 40),
//             Container(
//               // height: MediaQuery.of(context).size.height / 3,
//               width: MediaQuery.of(context).size.width,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(30),
//                 child: Image.asset("assets/otp.gif"),//
//               ),
//             ),
//             SizedBox(height: 8),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 8.0),
//               child: Text(
//                 'Phone Number Verification',
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding:
//               const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8),
//               child: RichText(
//                 text: TextSpan(
//                     text: "Enter the code sent to ",
//                     children: [
//                       TextSpan(
//                           text: "+9647501233211",
//                           style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15)),
//                     ],
//                     style: TextStyle(color: Colors.black54, fontSize: 15)),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Form(
//               key: formKey,
//               child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                       vertical: 8.0, horizontal: 30),
//                   child: PinCodeTextField(
//                     appContext: context,
//                     length: 6,
//                     animationType: AnimationType.fade,
//                     validator: (v) {
//                       if (v!.length < 6) {
//                         return "you should enter all SMS code";
//                       }
//                       else {
//                         return null;
//                       }
//                     },
//                     pinTheme: PinTheme(
//                       shape: PinCodeFieldShape.box,
//                       borderRadius: BorderRadius.circular(5),
//                       fieldHeight: 50,
//                       fieldWidth: 40,
//                       activeFillColor: Colors.white,
//                       inactiveFillColor:Colors.white,
//                     ),
//                     cursorColor: Colors.black,
//                     animationDuration: Duration(milliseconds: 300),
//                     errorAnimationController: errorController,
//                     controller: otpController,
//                     keyboardType: TextInputType.number,
//                     boxShadows: [
//                       BoxShadow(
//                         offset: Offset(0, 1),
//                         color: Colors.white,
//                         blurRadius: 10,
//                       )
//                     ],
//                     onCompleted: (v) {
//                       print("Completed");
//                     },
//                     onChanged: (value) {
//                       print(value);
//                       setState(() {
//                         currentText = value;
//                       });
//                     },
//                   )),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30.0),
//               child: Text(
//                 hasError ? "please resend the code!" :"",
//                 style: TextStyle(
//                     color: Colors.red,
//                     fontSize: 12,
//                     fontWeight: FontWeight.w400),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "Didn't receive the code? ",
//                   style: TextStyle(color: Colors.black54, fontSize: 15),
//                 ),
//                 TextButton(
//                     onPressed: isTimeOut ? () async {
//                       setState(() {
//                         isTimeOut =  false;
//                       });
//                       await FirebaseAuth.instance.verifyPhoneNumber(
//                         phoneNumber: '+9647501233211',
//                         verificationCompleted: (PhoneAuthCredential credential) {},
//                         verificationFailed: (FirebaseAuthException e) {
//                           setState(() {
//                             showLoading = false;
//                           });
//                           setState(() {
//                             verificationFailedMessage = e.message ?? "error!";
//                           });
//                         },
//                         codeSent: (String verificationId, int? resendToken) {
//                           setState(() {
//                             showLoading = false;
//                             myVerificationId = verificationId;
//                           });
//                         },
//                         timeout: const Duration(seconds: 10),
//                         codeAutoRetrievalTimeout: (String verificationId) {
//                           setState(() {
//                             isTimeOut =  true;
//                           });
//                         },
//                       );
//                     } : null,
//                     child: Text(
//                       "RESEND",
//                       style: TextStyle(
//                           color: Color(0xFF91D3B3),
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16),
//                     ))
//               ],
//             ),
//             SizedBox(
//               height: 14,
//             ),
//             Container(
//               margin:
//               const EdgeInsets.symmetric(vertical: 16.0, horizontal: 30),
//               child: ButtonTheme(
//                 height: 50,
//                 child: TextButton(
//                   onPressed:  isTimeOut ? null : () async {

//                     formKey.currentState!.validate();
//                     // conditions for validating
//                     if (currentText.length != 6 || currentText != "123456") {
//                       errorController!.add(ErrorAnimationType
//                           .shake); // Triggering error shake animation
//                       setState(() => hasError = true);
//                     } else {
//                       setState(
//                             () {
//                           hasError = false;
//                         },
//                       );
//                         setState(() {
//                           showLoading = true;
//                         });

//                         try{
//                           PhoneAuthCredential credential = PhoneAuthProvider.credential(verificationId: myVerificationId, smsCode: otpController.text);

//                           // Sign the user in (or link) with the credential
//                           await auth.signInWithCredential(credential);

//                         }on FirebaseAuthException catch (e){
//                           setState(() {
//                             verificationFailedMessage = e.message ?? "error";
//                           });
//                         }

//                         setState(() {
//                           showLoading = false;
//                         });
//                         if(auth.currentUser != null){
//                           Navigator.of(context).push(PageRouteBuilder(pageBuilder: (_,__,___) => NavigationScreen()));
//                         }
//                     }
//                   },
//                   child: Center(
//                       child: Text(
//                         "VERIFY".toUpperCase(),
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold),
//                       )),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                   color: Colors.green.shade300,
//                   borderRadius: BorderRadius.circular(5),
//                   boxShadow: [
//                     BoxShadow(
//                         color: Colors.green.shade200,
//                         offset: Offset(1, -2),
//                         blurRadius: 5),
//                     BoxShadow(
//                         color: Colors.green.shade200,
//                         offset: Offset(-1, 2),
//                         blurRadius: 5)
//                   ]),
//             ),
//             SizedBox(
//               height: 16,
//             ),
//             Text(
//               verificationFailedMessage,
//               style: TextStyle(
//                   color: Colors.red,
//                   fontSize: 12,
//                   fontWeight: FontWeight.w400),
//             ),
//           ],
//         ),
//       ),
//     ), );
//   }
// }
