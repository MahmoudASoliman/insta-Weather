import 'package:insta_weather/models/hourly_weather_model.dart';

class Weathermodel {
  final String cityName;
  final double currentTemp;
  final String currentCondition;
  final String currentConditionIcon;
  final double maxTemp;
  final double minTemp;
  final List<HourlyWeatherModel> hourlyForecast;

  Weathermodel({
    required this.cityName,
    required this.currentTemp,
    required this.currentCondition,
    required this.currentConditionIcon,
    required this.maxTemp,
    required this.minTemp,
    required this.hourlyForecast,
  });

  factory Weathermodel.fromJson(Map<String, dynamic> json) {
    var hourlyList = json["forecast"]["forecastday"][0]["hour"] as List;
    List<HourlyWeatherModel> hourlyForecast = hourlyList
        .map((hourData) => HourlyWeatherModel.fromJson(hourData))
        .toList();

    return Weathermodel(
      cityName: json["location"]["name"],
      currentTemp: json["current"]["temp_c"],
      currentCondition: json["current"]["condition"]["text"],
      currentConditionIcon: json["current"]["condition"]["icon"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      hourlyForecast: hourlyForecast,
    );
  }
}
