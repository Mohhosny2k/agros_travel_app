import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';

import 'add_credit_details.dart';


class CreditScreen extends StatefulWidget {
  const CreditScreen({super.key});

  @override
  State<CreditScreen> createState() => _CreditScreenState();
}

class _CreditScreenState extends State<CreditScreen> {
   TextEditingController creditCon1 = TextEditingController();
   TextEditingController creditCon2 = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> creditKey1 = GlobalKey<FormState>();
  GlobalKey<FormState> creditKey2 = GlobalKey<FormState>();
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
          'Credit Card',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
       ),
       body: Form(
key: _formKey,
         child: ListView(
          padding: EdgeInsets.all(10),
          children: [
          Text('Your cards',style: SharedFonts.subBlackFont,),
       
       
       
             TextFormField(
         key: creditKey1,
         controller: creditCon1,
          decoration: InputDecoration(
           border: InputBorder.none,
          //  border: OutlineInputBorder(
          //      // borderRadius: BorderRadius.only(),
          //       borderSide: BorderSide(width: 1)),
            hintText: 'xxxx xxxx xxxx xxxx',
            contentPadding: EdgeInsets.all(10)
          ),
             ),
       
          Divider(
            color: SharedColors.greyColor,
            height: 10,
            thickness: .5,
          ),
           TextFormField(
           key: creditKey2,
         controller: creditCon2,
          decoration: InputDecoration(
           border: InputBorder.none,
          //  border: OutlineInputBorder(
          //      // borderRadius: BorderRadius.only(),
          //       borderSide: BorderSide(width: 1)),
            hintText: 'xxxx xxxx xxxx xxxx',
            contentPadding: EdgeInsets.all(10)
          ),
             ),
         Divider(
            color: SharedColors.greyColor,
            height: 10,
            thickness: .5,
          ),
            ListTile(
            leading: Text(
              'Add new card',
              style: SharedFonts.subBlackFont,
            ),
            trailing: 
              Icon(
                Icons.arrow_forward_ios,
                size: 20,
                color: SharedColors.greyColor,
              ),
              
            
            onTap: (){
               Navigator.push(
                    context, MaterialPageRoute(builder: (_) => AddCreditDetails()));
            },
          ),
          Divider(
            color: SharedColors.greyColor,
            height: 15,
            thickness: .5,
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
            10,
            MediaQuery.of(context).size.width / .100,
            50,
          ),
         ]),
       ),
    );
  }
}