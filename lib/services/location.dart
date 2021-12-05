import 'package:geolocator/geolocator.dart';

class Location {
  var latitude, longitude;
  Future<void> getCurrentLocation() async {
    try {
      var position = await GeolocatorPlatform.instance
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
