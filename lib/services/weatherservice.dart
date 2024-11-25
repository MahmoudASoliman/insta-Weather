import 'package:dio/dio.dart';
import 'package:insta_weather/models/weathermodel.dart';

class WeatherServices {
  final Dio dio;

  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "ca9d15ad19714bb48e6114633230906";

  WeatherServices({
    required this.dio,
  });
  Future<Weathermodel> getweather({required final String cityName}) async {
    try {
      Response response = await dio.get(
        "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no",
      );

      Weathermodel weather = Weathermodel.fromJson(response.data);
      return weather;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data["error"]["message"] ?? "oops";
      throw (errorMessage);
    } catch (e) {
      throw Exception("fjfmjv");
    }
  }
}
