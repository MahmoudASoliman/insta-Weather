import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_weather/cuibt/Get%20Weather%20Cubit/get_weather_cubit.dart';
import 'package:insta_weather/cuibt/Get%20Weather%20Cubit/get_weather_state.dart';
import 'package:insta_weather/widgets/current_weather_info.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key, r});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<GetWeatherCubit>(context).getWeather(cityName: "london");
    return BlocBuilder<GetWeatherCubit, GetWeatherState>(
      builder: (context, state) {
        if (state is WeastherLoadedState) {
          return CurrentWeatherInfo(weathermodel: state.weathermodel);
        } else if (state is WeastherFialureState) {
          return const Text("no data");
        } else if (state is WeatherIntial) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
