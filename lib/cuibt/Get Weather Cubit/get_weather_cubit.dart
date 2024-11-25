import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:insta_weather/cuibt/Get%20Weather%20Cubit/get_weather_state.dart';
import 'package:insta_weather/models/weathermodel.dart';
import 'package:insta_weather/services/weatherservice.dart';

class GetWeatherCubit extends Cubit<GetWeatherState> {
  GetWeatherCubit() : super(WeatherIntial());

  getWeather({required cityName}) async {
    try {
      Weathermodel weathermodel =
          await WeatherServices(dio: Dio()).getweather(cityName: cityName);
      emit(
        WeastherLoadedState(weathermodel: weathermodel),
      );
    } on Exception catch (e) {
      emit(
        WeastherFialureState(
          errorMessage: e.toString(),
        ),
      );
    }
  }
}
