import 'package:flutter/material.dart';

import '../shared_theme/shared_colors.dart';
import '../shared_theme/shared_fonts.dart';


class ListCheckboxWidget extends StatefulWidget {
  final bool? check;
  final String? txt;
  final dynamic? fun;
  const ListCheckboxWidget(this.check, this.txt, this.fun, {super.key});

  @override
  State<ListCheckboxWidget> createState() => _ListCheckboxWidgetState();
}

class _ListCheckboxWidgetState extends State<ListCheckboxWidget> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        widget.txt!,
        style: SharedFonts.primaryGreyFont,
      ),
      activeColor: SharedColors.mainGrayColor,
      checkColor: SharedColors.white,
      value: widget.check!,
      onChanged: widget.fun!,
    );
  }
}
