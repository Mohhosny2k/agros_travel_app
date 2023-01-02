import 'package:agros/shared/shared_theme/shared_colors.dart';
import 'package:agros/shared/shared_widget/custom_field_widget.dart';
import 'package:agros/travel/map_control.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
    TextEditingController searchController = TextEditingController();
  MapController mapController = MapController();
  @override
  void initState() {
    mapController.getUserLocation();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    body: Column(
      children: [
        SafeArea(
          top: true,
          child: CustomFieldWidget(
            FieldModel(
                    controller: searchController,
                    icon: Icons.location_on,
                    labelTxt: 'ex: Nasr City',
                    type: TextInputType.streetAddress,
                    onsubmit: () {
                      mapController.searchLocation(searchController.text);
                    },
                    
                    )
          ),
        ),
        Flexible(
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target:mapController.latLng,//LatLng(30.033333,31.233334),
              zoom: 12,
              ),
               myLocationEnabled: true,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
          ),
        ),
      ],
    ),
    );
  }
}
