import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_theme/shared_fonts.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:flutter/material.dart';


class TopSearchHome extends StatefulWidget {
  const TopSearchHome({super.key});

  @override
  State<TopSearchHome> createState() => _TopSearchHomeState();
}

class _TopSearchHomeState extends State<TopSearchHome> {
  TextEditingController searchCon = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  GlobalKey<FormState> searchKey = GlobalKey<FormState>();
  bool Farmsteads = false;
  bool GuesHouses = false;
  bool Cottages = false;
  bool PlacesNearby = false;
  String Date = 'Dates';
  String guests = 'Add guests';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomFieldWidget(
            FieldModel(
                controller: searchCon,
                key: searchKey,
                hintTxt: 'Brest,Brest region',
                icon: Icons.search,
                type: TextInputType.text,
                labelTxt: 'Search'),
          ),
          Container(
            height: 57,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                //color: Colors.pink[300],
                border: Border.all(color: SharedColors.greyColor),
                borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: Text(
                'When',
                style: SharedFonts.subGreyFont,
              ),
              trailing: Text(
                Date,
                style: Date == 'Dates'
                    ? SharedFonts.subGreyFont
                    : SharedFonts.subBlackFont,
              ),
              onTap: () async {
                DateTime? selectData = await showDatePicker(
                    context: context,
                    initialDate: DateTime(1990),
                    firstDate: DateTime(1990),
                    lastDate: DateTime(2005));

                try {
                  setState(() {
                    Date = selectData.toString().substring(0, 10);
                  });
                } catch (e) {}
              },
            ),
          ),
          Container(
            height: 57,
            // width: double.infinity,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                //color: Colors.pink[300],
                border: Border.all(color: SharedColors.greyColor),
                borderRadius: BorderRadius.circular(15)),
            child: ListTile(
              leading: Text(
                'Who',
                style: SharedFonts.subGreyFont,
              ),
              trailing: Text(
                guests,
                style: guests == 'Add guests'
                    ? SharedFonts.subGreyFont
                    : SharedFonts.subBlackFont,
              ),
              title: PopupMenuButton(
                icon: Icon(Icons.add_sharp, color: SharedColors.mainGrayColor),
                iconSize: 20.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                itemBuilder: (BuildContext context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem(
                      child: Text('1'),
                      value: '1 guests',
                    ),
                    PopupMenuItem(
                      child: Text('2'),
                      value: '2  guests',
                    ),
                    PopupMenuItem(
                      child: Text('3'),
                      value: '3  guests',
                    ),
                    PopupMenuItem(
                      child: Text('4'),
                      value: '4  guests',
                    ),
                    PopupMenuItem(
                      child: Text('5'),
                      value: '5  guests',
                    ),
                    PopupMenuItem(
                      child: Text('6'),
                      value: '6  guests',
                    ),
                    PopupMenuItem(
                      child: Text('7'),
                      value: '7  guests',
                    ),
                    PopupMenuItem(
                      child: Text('8'),
                      value: '8  guests',
                    ),
                    PopupMenuItem(
                      child: Text('9'),
                      value: '9  guests',
                    ),
                    PopupMenuItem(
                      child: Text('10'),
                      value: '10  guests',
                    ),
                  ];
                },
                onSelected: (v) {
                  setState(() {
                    guests = v;
                  });
                },
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 57,
                width: 157,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border: Border.all(color: SharedColors.greyColor),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Text(
                    'Farmsteads  ',
                    softWrap: false,
                    style: SharedFonts.subGreyFont,
                  ),
                  trailing: Checkbox(
                      checkColor: SharedColors.white,
                      activeColor: SharedColors.mainGrayColor,
                      value: Farmsteads,
                      onChanged: (x) {
                        setState(() {
                          Farmsteads = x!;
                        });
                      }),
                ),
              ),
              Container(
                height: 57,
                width: 157,
                //padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    //  color: Colors.tealAccent,
                    border: Border.all(color: SharedColors.greyColor),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Text(
                    'Guest house   ',
                    softWrap: false,
                    style: SharedFonts.subGreyFont,
                  ),
                  trailing: Checkbox(
                      checkColor: SharedColors.white,
                      activeColor: SharedColors.mainGrayColor,
                      value: GuesHouses,
                      onChanged: (x) {
                        setState(() {
                          GuesHouses = x!;
                        });
                      }),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 57,
                width: 160,
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.pink[300],
                    border: Border.all(color: SharedColors.greyColor),
                    borderRadius: BorderRadius.circular(15)),
                child: ListTile(
                  leading: Text(
                    'Cottages  ',
                    softWrap: false,
                    style: SharedFonts.subGreyFont,
                  ),
                  trailing: Checkbox(
                      checkColor: SharedColors.white,
                      activeColor: SharedColors.mainGrayColor,
                      value: Cottages,
                      onChanged: (x) {
                        setState(() {
                          Cottages = x!;
                        });
                      }),
                ),
              ),
              Container(
                height: 57,
                width: 160,
                // padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    // color: Colors.tealAccent,
                    border: Border.all(color: SharedColors.greyColor),
                    borderRadius: BorderRadius.circular(15)),

                child: ListTile(
                  leading: Text(
                    'PlacesNearby  ',
                    softWrap: true,
                    style: SharedFonts.subGreyFont,
                  ),
                  trailing: Checkbox(
                      checkColor: SharedColors.white,
                      activeColor: SharedColors.mainGrayColor,
                      value: PlacesNearby,
                      onChanged: (x) {
                        setState(() {
                          PlacesNearby = x!;
                        });
                      }),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
