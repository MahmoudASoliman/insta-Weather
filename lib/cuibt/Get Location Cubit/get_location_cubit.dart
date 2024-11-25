import 'package:bloc/bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:insta_weather/cuibt/Get%20Location%20Cubit/get_location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());

  Future<void> checkLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      emit(LocationServiceDisabled());
      return;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        emit(LocationPermissionDenied());
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      emit(LocationPermissionDeniedForever());
      return;
    }

    try {
      Position position = await Geolocator.getCurrentPosition();
      emit(LocationSuccess(position));
    } catch (e) {
      emit(LocationError(e.toString()));
    }
  }

  // فتح الإعدادات
  Future<void> openLocationSettings() async {
    await Geolocator.openLocationSettings();
    checkLocationPermission();
  }
}
