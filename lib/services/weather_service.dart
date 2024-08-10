import 'dart:async';
import 'package:dio/dio.dart';
import 'package:weather/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "a85fad268777468d96a140456240908";
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get("$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1");
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data["error"]["message"] ??
          "oops there was an error , try latter";
      throw Exception(errMessage);
    }
  }
}
