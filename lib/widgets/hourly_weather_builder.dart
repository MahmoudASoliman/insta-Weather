import 'package:flutter/material.dart';
import 'package:insta_weather/models/hourly_weather_model.dart';
import 'package:insta_weather/widgets/hourly_weather.dart';

class HourlyWeatherBuilder extends StatelessWidget {
  final List<HourlyWeatherModel> listHourlyWeather;
  const HourlyWeatherBuilder({
    super.key,
    required this.listHourlyWeather,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 180,
        child: ListView.builder(
          itemCount: listHourlyWeather.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return HourlyWeather(
              hourlyWeatherModel: listHourlyWeather[index],
            );
          },
        ),
      ),
    );
  }
}
