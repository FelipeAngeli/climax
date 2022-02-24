import 'dart:convert';

import 'package:climax/app/model/weather_model.dart';
import 'package:climax/app/services/http_client._contrato.dart';

// cuidar com os new
abstract class ProductRepositoryInterface {
  Future<WeatherModel> getProducts(String city);
}

class ProductRepository implements ProductRepositoryInterface {
  final IhttpClient client;

  ProductRepository(this.client);

  @override
  Future<WeatherModel> getProducts(String city) async {
    final response =
        await client.get("https://goweather.herokuapp.com/weather/$city");

    //var weatherMap = json.decode(response) as Map<String, dynamic>;
    var weather = WeatherModel.fromJson(response);

    // var list = response["forecast"];
    // var products =
    //     List<WeatherModel>.from(list.map((e) => WeatherModel.fromJson(e)));

    return weather;
  }
}
