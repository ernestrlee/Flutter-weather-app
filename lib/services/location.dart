import 'package:geolocator/geolocator.dart';

class Location {
  double longitude;
  double latitude;

  Future<void> getCurrentLocation() async {
    try {
      // From stackoverflow added to make android simulator work
      Geolocator geolocator = Geolocator()..forceAndroidLocationManager = true;

      Position position = await Geolocator().getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);

      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch (e) {
      print (e);
    }
  }
}