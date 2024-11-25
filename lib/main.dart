import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_weather/cuibt/Get%20Weather%20Cubit/get_weather_cubit.dart';
import 'package:insta_weather/pages/homepage.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const InstaWaether(),
    ),
  );
}

class InstaWaether extends StatelessWidget {
  const InstaWaether({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
