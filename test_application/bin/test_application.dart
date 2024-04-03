import 'dart:math';

void main() {
  // Упражнение 1
  int temperature = 15;
  int value = 10;
  String dart = 'Dart';
  String flutter = 'Flutter';
  print('Мне нравится изучать $dart и $flutter!');
  print('Сегодня температура $temperature С, а завтра похолодает до ($temperature - 3.1) - ${temperature - 3.1} С.');
  print('$value плюс $value, получится ${value + value}');

  // Упражнение 2
  double tempFarenheit = 60.79;
  print('$tempFarenheit F = ${((tempFarenheit - 32) / 1.8).toStringAsFixed(1)} C');

  // Упражнение 3
  const a = 3.2;
  const b = -7.8;
  const c = 1;

  var x1 = (-b + sqrt(b * b - 4 * a *c)) / (2 * a);
  var x2 = (-b - sqrt(b * b - 4 * a *c)) / (2 * a);
  print('x1 = ${x1.toStringAsFixed(2)}; x2 = ${x2.toStringAsFixed(2)}');

  // Упражение 4
  final timeNow = DateTime.now();

  const maybeJava = 'Java';
  const maybeFlutter = 'Flutter';

  var favourite;
  favourite = '${maybeJava}and$maybeFlutter';
  favourite = 'Now I like $favourite';

  final newfavourite = favourite.replaceAll('Java', 'Dart');

  print('Now is time: $timeNow');
  print(newfavourite);
}
