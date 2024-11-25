class HourlyWeatherModel {
  final String time;
  final double temp;
  final String icon;

  HourlyWeatherModel({
    required this.time,
    required this.temp,
    required this.icon,
  });

  factory HourlyWeatherModel.fromJson(Map<String, dynamic> json) {
    return HourlyWeatherModel(
      time: json["time"], // Use the time string as is
      temp: json["temp_c"], // Celsius temperature
      icon: json["condition"]["icon"], // Icon URL
    );
  }
}
