import 'dart:io';

import 'package:test_application/weather_api_client.dart';

void main(List<String> arguments) async {
  if (arguments.length != 1) {
    print('Syntax error: dart bin/main.dart <city>');
    return;
  }

  final cityName = arguments[0];
  // print(cityName);

  final weatherApiClient = WeatherApiClient();

  // Получение текущего прогноза погоды
  try {
    final currentWeather = await weatherApiClient.getCurrentWeather(cityName);
    print('Current weather for $cityName');
    print(currentWeather);
    print('-----------------------------\n');
  } on WeatherApiException catch (error) {
    print('Error: ${error.message}');
  } on SocketException catch (_) {
    print(
        'Could not fetch current weather data. Check your internet connection');
  } catch (e) {
    print(e);
  }

  // Получение прогноза погоды на неделю
  try {
    final weeklyForecast = await weatherApiClient.getWeeklyForecast(cityName);
    print('Weekly forecast for $cityName');
    // ignore: avoid_function_literals_in_foreach_calls
    weeklyForecast.forEach((foreacast) {
      print(foreacast);
      print('-----------------------------\n');
    });
  } on WeatherApiException catch (error) {
    print('Error: ${error.message}');
  } on SocketException catch (_) {
    print(
        'Could not fetch current weather data. Check your internet connection');
  } catch (e) {
    print(e);
  }
}
// weatherapi.com: rerama7876@dacgu.com
