import 'package:test_application/car.dart';

void main() {
  const myCar = Car(vin: 503, model: 'BMW');
  print(myCar);

  const volvoCar = Car.volvo();
  print(volvoCar);

  final renoCar = Car.reno();
  print(renoCar);

  final mapCar = {'vin': 700, 'model': 'Lada'};
  final ladaCar = Car.fromJson(mapCar);
  print(ladaCar);
}
