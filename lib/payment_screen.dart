import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';

import 'credit_screen.dart';


class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.white,
      appBar: AppBar(
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
        backgroundColor: Colors.transparent,
        title: Text(
          'Payment',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        // ListTile(
        //   leading: Text(
        //     'Pay by',
        //     style: SharedFonts.subBlackFont,
        //   ),
        //   trailing: IconButton(
        //     icon: Icon(
        //       Icons.arrow_forward_ios,
        //       size: 20,
        //       color: SharedColors.greyColor,
        //     ),
        //     onPressed: () {},
        //   ),
        // ),
        // Divider(
        //   color: SharedColors.greyColor,
        //   height: 15,
        //   thickness: .5,
        // ),
        Text(
          'Pay by\n',
          style: SharedFonts.subBlackFont,
        ),

        ListTile(
            leading: Text(
              'Credit or debit card',
              style: SharedFonts.subBlackFont,
            ),
            trailing: 
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: SharedColors.greyColor,
              ),
             
            
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => CreditScreen()));
            }),
        Divider(
          color: SharedColors.greyColor,
          height: 15,
          thickness: .5,
        ),
        ListTile(
          leading: Text(
            'Pay pal',
            style: SharedFonts.subBlackFont,
          ),
          trailing: 
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: SharedColors.greyColor,
            ),
            
          
          onTap: (){},
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .4,
        ),
        ListTile(
          title: Text(
            'Total(USD)',
            style: SharedFonts.subBlackFont,
          ),
          trailing: Text(
            '\$300',
            style: SharedFonts.subBlackFont,
          ),
        ),
        TexxBottomWidget(
          () {},
          'Pay',
          SharedColors.white,
          SharedColors.mainGrayColor,
          13,
          MediaQuery.of(context).size.width * 1,
          50,
        ),
      ]),
    );
  }
}
