import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class MapController {
  LatLng _latLng = LatLng(30.033333, 31.233334);
  LatLng get latLng => _latLng;

  Future<void> getUserLocation() async {
    bool isDone = await mapStatus();
    if (isDone) {
      Position userPosition = await Geolocator.getCurrentPosition();
      _latLng = LatLng(userPosition.latitude, userPosition.longitude);
    }
  }

  Future<bool> mapStatus() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return false;
    }
    bool service = await Geolocator.isLocationServiceEnabled();
    if (!service) return false;

    return true;
  }

  Future<void> searchLocation(String address) async {
    bool isDone = await mapStatus();
    if (isDone) {
      List<Location> locations = await locationFromAddress(address);
      _latLng = LatLng(locations[0].latitude, locations[0].longitude);
      print(_latLng.latitude);
    }
  }
}
