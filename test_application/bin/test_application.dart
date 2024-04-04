import 'package:test_application/car.dart';

void main() {
  final myCar = Car(503, 'BMW');
  print(myCar);

  Car.numOfWheels = 4;
  myCar.checkMove();

  Car.setWheels(3);
}
