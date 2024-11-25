import 'package:flutter/material.dart';

import 'package:insta_weather/widgets/curent_weather.dart';
import 'package:insta_weather/widgets/custom_weather_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF809EAC),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            height: double.infinity,
            width: double.infinity,
            'assets/images/BackGround.png',
            fit: BoxFit.cover,
          ),
          const CurrentWeather(),
          const CustomWeathersheet(),
        ],
      ),
    );
  }
}
