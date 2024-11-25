// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';

// import 'package:insta_weather/models/weathermodel.dart';

// import 'package:insta_weather/services/weatherservice.dart';
// import 'package:insta_weather/widgets/curent_weather.dart';

// class CurrentWeatherBuilder extends StatefulWidget {
//   const CurrentWeatherBuilder({super.key});

//   @override
//   State<CurrentWeatherBuilder> createState() => _CurrentWeatherBuilderState();
// }

// class _CurrentWeatherBuilderState extends State<CurrentWeatherBuilder> {
//   var future;
//   // متغير لتخزين اسم المدينة
//   bool isLocationPermissionGranted = false; // لمتابعة حالة الأذونات

//   @override
//   void initState() {
//     super.initState();
//     future = WeatherServices(dio: Dio()).getweather(cityName: "london");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<Weathermodel>(
//       future: future,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         } else if (snapshot.hasError) {
//           return Center(child: Text(snapshot.error.toString()));
//         } else if (snapshot.hasData) {
//           Weathermodel weathermodel = snapshot.data!;
//           return CurrentWeather(
//             weathermodel: weathermodel,
//           );
//         } else {
//           return const Center(child: Text("No data available"));
//         }
//       },
//     );
//   }
// }
