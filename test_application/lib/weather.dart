class Weather {
  final String lastUpdated;
  final String cityName;
  final double tempC;
  final double feelsLikeC;
  final String condition;

  const Weather({
    required this.lastUpdated,
    required this.cityName,
    required this.tempC,
    required this.feelsLikeC,
    required this.condition,
  });

  factory Weather.fromJson(Map<String, dynamic> json) {
    final currentData = json['current'];
    return Weather(
      lastUpdated: currentData['last_updated'],
      cityName: json['location']['name'],
      tempC: currentData['temp_c'].toDouble(),
      feelsLikeC: currentData['feelslike_c'].toDouble(),
      condition: currentData['condition']['text'],
    );
  }

  @override
  String toString() => '''
    Last updated: $lastUpdated
    Temperature: $tempC C
    Feels like: $feelsLikeC C
    Weather condition: $condition
''';
}

class Forecast {
  final String date;
  final double minTempC;
  final double maxTempC;
  final String condition;

  const Forecast({
    required this.date,
    required this.minTempC,
    required this.maxTempC,
    required this.condition,
  });

  factory Forecast.fromJson(Map<String, dynamic> json) {
    return Forecast(
      date: json['date'],
      minTempC: json['day']['mintemp_c'].toDouble(),
      maxTempC: json['day']['maxtemp_c'].toDouble(),
      condition: json['day']['condition']['text'],
    );
  }

  @override
  String toString() => '''
    Day: $date
    Temperature: $minTempC C - $maxTempC C
    Weather condition: $condition
''';
}
