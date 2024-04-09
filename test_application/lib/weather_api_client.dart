import 'dart:convert';

import 'package:test_application/config.dart';
import 'package:test_application/weather.dart';
import 'package:http/http.dart' as http;

class WeatherApiClient {
  Future<Weather> getCurrentWeather(String cityName) async {
    final url =
        '${Config().baseUrl}/${Config().currentUrl}?key=${Config().apiKey}&q=$cityName';
    print(url);

    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      print('Request failed with status: ${response.statusCode}');
      throw WeatherApiException('Error getting weather for $cityName');
    }

    final Map<String, dynamic> jsonResponse =
        Map.castFrom(jsonDecode(response.body));
    if (jsonResponse.isEmpty) {
      throw WeatherApiException('Weather data for $cityName not found');
    }

    return Weather.fromJson(jsonResponse);
  }

  Future<List<Forecast>> getWeeklyForecast(String cityName) async {
    final url =
        '${Config().baseUrl}/${Config().forecastUrl}?key=${Config().apiKey}&q=$cityName&days=7';
    print(url);

    final response = await http.get(Uri.parse(url));
    if (response.statusCode != 200) {
      print('Request failed with status: ${response.statusCode}');
      throw WeatherApiException('Error getting forecast for $cityName');
    }

    final jsonResponse = jsonDecode(response.body);
    final forecastList = List<Map<String, dynamic>>.from(
        jsonResponse['forecast']['forecastday']);
    if (jsonResponse.isEmpty) {
      throw WeatherApiException('Forecast data for $cityName not found');
    }

    return forecastList.map((e) => Forecast.fromJson(e)).toList();
  }
}

class WeatherApiException implements Exception {
  final String message;

  const WeatherApiException(this.message);
}
