class Config {
  Config._internal();

  static final Config _instance = Config._internal();

  factory Config() => _instance;

  String apiKey = '32e775d0099b4ce4a7c100234240904';

  String baseUrl = 'http://api.weatherapi.com/v1';
  String currentUrl = 'current.json';
  String forecastUrl = 'forecast.json';
}