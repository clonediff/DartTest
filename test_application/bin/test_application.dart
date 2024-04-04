import 'package:test_application/car.dart';

void main() {
  Car intCar = Car(1, 'BMW');
  print(intCar.id.runtimeType);
  intCar.move('100');

  Car stringCar = Car('1', 'Ford');
  print(stringCar.id.runtimeType);
  stringCar.move(100);
}