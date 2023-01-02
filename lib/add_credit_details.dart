import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:agros/shared/shared_widget/text_bottom_widget.dart';
import 'package:flutter/material.dart';


class AddCreditDetails extends StatefulWidget {
  const AddCreditDetails({super.key});

  @override
  State<AddCreditDetails> createState() => _AddCreditDetailsState();
}

class _AddCreditDetailsState extends State<AddCreditDetails> {
  TextEditingController creditNumCon = TextEditingController();
  TextEditingController creditDateCon = TextEditingController();
  TextEditingController creditCvvCon = TextEditingController();
  TextEditingController creditHolderCon = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> creditNumkey = GlobalKey<FormState>();
  GlobalKey<FormState> creditDatekey = GlobalKey<FormState>();
  GlobalKey<FormState> creditCvvKey = GlobalKey<FormState>();
  GlobalKey<FormState> creditHolderKey = GlobalKey<FormState>();
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
          'Add Card details',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
        child: ListView(padding: EdgeInsets.all(10), children: [
          Container(
            height: 60,
            width: 90,
            //color: Colors.amber,
            margin: EdgeInsets.all(5),
            child: CustomFieldWidget(FieldModel(
                controller: creditNumCon,
                key: creditNumkey,
                hintTxt: 'xxxx xxxx xxxx xxxx',
                type: TextInputType.number)),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: EdgeInsets.all(5),
           // color: Colors.deepOrangeAccent,
            child: Row(
                mainAxisSize: MainAxisSize.min,
               // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 210,
                    height: 95,
                  //  color: Colors.green,
                    // margin: EdgeInsets.all(
                    //   2.5,
                    // ),
                    child: CustomFieldWidget(FieldModel(
                        controller: creditDateCon,
                        key: creditDatekey,
                        hintTxt: 'MM/YY',
                        type: TextInputType.number)),
                  ),
                  Container(
                    width: 140,
                    height: 95,
                   // color: Colors.blue,
                   // margin: EdgeInsets.all(2.5),
                    child: CustomFieldWidget(FieldModel(
                        controller: creditCvvCon,
                        key: creditCvvKey,
                        hintTxt: 'CVV',
                        type: TextInputType.number)),
                  ),
                ]),
          ),
          Container(
            width: 90,
            margin: EdgeInsets.all(5),
            height: 60,
           // color: Colors.blue,
            child: CustomFieldWidget(FieldModel(
                controller: creditHolderCon,
                key: creditHolderKey,
                hintTxt: 'Enter Cardholder',
                type: TextInputType.name)),
          ),
          SizedBox(
          height: MediaQuery.of(context).size.height * .5,
        ),
          TexxBottomWidget(
            () {},
            'Add',
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
