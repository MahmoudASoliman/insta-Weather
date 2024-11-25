import 'package:flutter/material.dart';
import 'package:insta_weather/models/weathermodel.dart';
import 'package:insta_weather/widgets/custom_text_temp.dart';
import 'package:insta_weather/widgets/hourly_weather_builder.dart';

class CurrentWeatherInfo extends StatelessWidget {
  const CurrentWeatherInfo({
    super.key,
    required this.weathermodel,
  });

  final Weathermodel weathermodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        Text(
          weathermodel.cityName,
          style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          weathermodel.currentCondition,
          style: const TextStyle(
            fontSize: 30,
            color: Color(0xFFBAD7E0),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        CustomTextTemp(
          tempC: weathermodel.currentTemp.toString(),
        ),
        Image.network(
          "https:${weathermodel.currentConditionIcon}",
          scale: 0.6,
        ),
        HourlyWeatherBuilder(
          listHourlyWeather: weathermodel.hourlyForecast,
        ),
      ],
    );
  }
}
