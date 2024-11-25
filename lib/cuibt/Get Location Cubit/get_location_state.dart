import 'package:geolocator/geolocator.dart';

abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationServiceDisabled extends LocationState {}

class LocationPermissionDenied extends LocationState {}

class LocationPermissionDeniedForever extends LocationState {}

class LocationSuccess extends LocationState {
  final Position position;
  LocationSuccess(this.position);
}

class LocationError extends LocationState {
  final String error;
  LocationError(this.error);
}
