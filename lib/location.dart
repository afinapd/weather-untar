import 'package:geolocator/geolocator.dart';

class LocationService{
  late double latitude;
  late double longitude;

  Future<dynamic> getCurrentLocation() async{
    try{
      Position currentPosition = await Geolocator
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      this.latitude = currentPosition.latitude;
      this.longitude=currentPosition.longitude;
      print(this.latitude);
      print(this.longitude);
    } catch(e){
      print(e);
    }
  }
}