// secound in API
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  final String baseUrl = 'https://api.weatherapi.com';
  final String apikey = '19ec5a08a0bd443e813163803240511';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityname}) async {
    try {
      Response response = await dio
          .get('$baseUrl/v1/forecast.json?key=$apikey&q=$cityname&days=1');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          'opps there was an error, try later';
      throw Exception(errMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('opps there was an error, try later');
    }
  }
}
