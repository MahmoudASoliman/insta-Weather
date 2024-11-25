import 'package:insta_weather/models/weathermodel.dart';

class GetWeatherState {}

class WeatherIntial extends GetWeatherState {}

class WeastherLoadedState extends GetWeatherState {
  final Weathermodel weathermodel;

  WeastherLoadedState({required this.weathermodel});
}

class WeastherFialureState extends GetWeatherState {
  final String errorMessage;

  WeastherFialureState({required this.errorMessage});
}
