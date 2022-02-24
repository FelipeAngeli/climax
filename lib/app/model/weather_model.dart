class WeatherModel {
  final String temperature;
  final String wind;
  final String description;

  WeatherModel({
    required this.temperature,
    required this.wind,
    required this.description,
  });

  static WeatherModel fromJson(Map map) {
    return WeatherModel(
      temperature: map["temperature"],
      wind: map["wind"],
      description: map['description'],
    );
  }

  // final String day;
  // final String temperature;
  // final String wind;

  // WeatherModel({
  //   required this.day,
  //   required this.temperature,
  //   required this.wind,
  // });

  // static WeatherModel fromJson(Map map) {
  //   return WeatherModel(
  //     day: map["day"],
  //     temperature: map["temperature"],
  //     wind: map["wind"],
  //   );
  // }

  //teste controller

  // static WeatherModel stub() => WeatherModel(
  //       day: "day",
  //       temperature: "temperature",
  //       wind: "wind",
  //     );
}
