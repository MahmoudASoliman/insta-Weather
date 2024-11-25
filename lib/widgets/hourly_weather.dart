import 'package:flutter/material.dart';
import 'package:insta_weather/models/hourly_weather_model.dart';
import 'package:intl/intl.dart';

class HourlyWeather extends StatelessWidget {
  final HourlyWeatherModel hourlyWeatherModel;
  const HourlyWeather({
    super.key,
    required this.hourlyWeatherModel,
  });

  String formatTime(String time) {
    DateTime dateTime = DateTime.parse(time);

    return DateFormat('h a').format(dateTime).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 16.0,
      ),
      child: Container(
        //  Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color(0xFF0B698B),
        ),
        height: 180,
        width: 60,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Text(
                formatTime(hourlyWeatherModel.time),
                style: const TextStyle(
                  color: Color(0xFF7FDFF4),
                  fontSize: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 8,
                ),
                child: Container(
                  width: 70, // حدد العرض الذي تريده
                  height: 70, // حدد الارتفاع الذي تريده
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF132F5B),
                  ),
                  child: Center(
                    child: Image.network(
                      "https:${hourlyWeatherModel.icon}",
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: hourlyWeatherModel.temp.toString(),
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xFF7FDFF4),
                      ),
                    ),
                    WidgetSpan(
                      child: Transform.translate(
                        offset: const Offset(0, -10),
                        child: const Text(
                          '°C',
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF7FDFF4),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
