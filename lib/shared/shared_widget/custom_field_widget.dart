import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';


enum FieldType { email, password, text }

class FieldModel {
  final String? labelTxt;
  final String? hintTxt;
  final IconData? icon;
  final TextInputType? type;
  final Key? key;
  final FieldType? filedtype;
  TextEditingController? controller;
  bool? enabel;
  bool? isScure;
  // int? mLe;
  // int? mli;
  //Function? onChanged = () {};
  //VoidCallback? onChanged ;
  //dynamic? onChanged = () {};
 Function()? onsubmit=() {
   
 };
//   Function()? onChanged=() {
   
//  };
//dynamic?  onsubmit= () {};
//dynamic?  onsubmit;
  //VoidCallback? onsubmit;
  FieldModel({
    this.labelTxt = '',
    this.hintTxt = '',
    this.icon,
    this.type,
    this.key,
    this.filedtype = FieldType.text,
    this.controller,
    this.enabel = true,
    this.isScure = false,
   //this.onChanged ,
    this.onsubmit,
    // this.mLe,
    // this.mli,
  });
}

class CustomFieldWidget extends StatefulWidget {
  final FieldModel model;
  const CustomFieldWidget(this.model, {super.key});

  @override
  State<CustomFieldWidget> createState() => _CustomFieldWidgetState();
}

class _CustomFieldWidgetState extends State<CustomFieldWidget> {
  bool editable = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        // maxLength:widget.model.mLe ,
        // maxLines: widget.model.mLe,
        key: widget.model.key,
        validator: (x) {
          if (x!.isEmpty) {
            return 'This field Reqired';
          }
        },

        controller: widget.model.controller,
        enabled: widget.model.enabel,
        obscureText: widget.model.isScure!,
        keyboardType: widget.model.type,
        // onChanged: (x){
        //   widget.model.onChanged!();
        // },
      onFieldSubmitted: //()=> widget.model.onsubmit!();
      (x) {
          widget.model.onsubmit!();
       },
        decoration: InputDecoration(
          border: fieldBorder(SharedColors.greyColor),
          errorBorder: fieldBorder(SharedColors.redColor),
          focusedBorder: fieldBorder(SharedColors.greyColor),
          focusedErrorBorder: fieldBorder(SharedColors.redColor),
          disabledBorder: fieldBorder(Colors.transparent),
          labelText: widget.model.labelTxt,
          labelStyle: SharedFonts.subGreyFont,
          hintText: widget.model.hintTxt,
          hintStyle: SharedFonts.subGreyFont,
          prefixIcon: Icon(
            widget.model.icon,
            color: SharedColors.greyColor,
          ),
          suffixIcon: widget.model.filedtype == FieldType.password
              ? IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  color: SharedColors.greyColor,
                  iconSize: 20,
                  onPressed: () {
                    setState(() {
                      widget.model.isScure = !widget.model.isScure!;
                    });
                  })
              : null,
        ),
      ),
    );
  }

  OutlineInputBorder fieldBorder(Color color) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(width: 1.0, color: color));
  }
}
