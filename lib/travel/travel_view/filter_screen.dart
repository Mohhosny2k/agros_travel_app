import 'package:flutter/material.dart';

import '../../shared/shared_theme/shared_colors.dart';
import '../../shared/shared_theme/shared_fonts.dart';
import '../../shared/shared_widget/list_checkbox_widget.dart';
import '../../shared/shared_widget/text_bottom_widget.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  RangeValues currentRangeValues = RangeValues(40, 80);
  bool housingType = false;
  bool wife = false;
  bool airCondition = false;
  bool tv = false;
  bool kitchen = false;
  bool washingMachine = false;
  bool iron = false;
  bool barbecueArea = false;
  bool bath = false;
  bool locationWater = false;
  bool swimming = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          'Filtration',
          style: SharedFonts.primaryBlackFont,
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                'Reset',
                style: SharedFonts.subGreyFont,
              )),
        ],
      ),
      body: ListView(padding: EdgeInsets.all(10), children: [
        Text('Price\n', style: SharedFonts.primaryBlackFont),
        Text(
          '${currentRangeValues.start.round().toString()}\$ - ${currentRangeValues.end.round().toString()}\$ \n',
          style: SharedFonts.primaryGreyFont,
        ),
        RangeSlider(
            divisions: 5,
            max: 100,
            min: 20,
            activeColor: SharedColors.mainGrayColor,
            inactiveColor: SharedColors.greyColor,
            labels: RangeLabels(
              currentRangeValues.start.round().toString(),
              currentRangeValues.end.round().toString(),
            ),
            values: currentRangeValues,
            onChanged: (RangeValues value) {
              setState(() {
                currentRangeValues = value;
              });
            }),
        Text('Housing type\n', style: SharedFonts.primaryBlackFont),
        ListCheckboxWidget(housingType, 'House', (x) {
          setState(() {
            housingType = x!;
          });
        }),
        ListCheckboxWidget(!housingType, 'Private Room', (x) {
          setState(() {
            housingType = !x!;
          });
        }),
        Text('Facilities\n', style: SharedFonts.primaryBlackFont),
        ListCheckboxWidget(wife, 'Wife', (x) {
          setState(() {
            wife = x!;
          });
        }),
        ListCheckboxWidget(airCondition, 'AirCondition', (x) {
          setState(() {
            airCondition = x!;
          });
        }),
        ListCheckboxWidget(tv, 'Television', (x) {
          setState(() {
            tv = x!;
          });
        }),
        ListCheckboxWidget(kitchen, 'Kitchen', (x) {
          setState(() {
            kitchen = x!;
          });
        }),
        ListCheckboxWidget(washingMachine, 'washingMachine', (x) {
          setState(() {
            washingMachine = x!;
          });
        }),
        ListCheckboxWidget(iron, 'Iron', (x) {
          setState(() {
            iron = x!;
          });
        }),
        ListCheckboxWidget(barbecueArea, 'Barbecue area', (x) {
          setState(() {
            barbecueArea = x!;
          });
        }),
        ListCheckboxWidget(bath, 'Bath', (x) {
          setState(() {
            bath = x!;
          });
        }),
        ListCheckboxWidget(locationWater, 'Location by the water', (x) {
          setState(() {
            locationWater = x!;
          });
        }),
        ListCheckboxWidget(swimming, 'Swimming pool\n', (x) {
          setState(() {
            swimming = x!;
          });
        }),
        TexxBottomWidget(
          () {},
          'Show options',
          SharedColors.white,
          SharedColors.mainGrayColor,
          20,
          MediaQuery.of(context).size.width * 1,
          50,
        )
      ]),
    );
  }
}
