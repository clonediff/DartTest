import 'package:test_application/car.dart';

void main() {
  // final myCar = Car(503, 'BMW');
  const myCar = Car(vin: 503, model: 'BMW');
  // myCar.vin = 503;
  // myCar.model = 'BMW';
  print(myCar);

  // final myCar1 = Car()
  //   ..vin = 100
  //   ..model = 'Ford';
  // print(myCar1.printNewCar());

  // final anotherCar = myCar;
  // print(myCar.vin);
  // anotherCar.vin = 0;
  // print(myCar.vin);

  final volvoCar = Car.volvo();
  print(volvoCar);
}