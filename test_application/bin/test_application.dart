void main() {
  // final myCar = Car(503, 'BMW');
  final myCar = Car(vin: 503, model: 'BMW');
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

class Car {
  int vin;
  String model;

  // Car(int vin, String model) {
  //   this.vin = vin;
  //   this.model = model;
  // }

  // Car(this.vin, this.model);

  Car({required this.vin, this.model = 'unknown'});

  // Требуется инициализация по умолчанию у полей класса
  // Car.volvo() {
  //   vin = 200;
  //   model = 'Volvo';
  // }

  // Инициализация по умолчанию у полей класса не требуется
  Car.volvo() : this(vin: 200, model: 'Volvo');

  String printNewCar() {
    return 'My new car has vin: $vin and model: $model';
  }

  @override
  String toString() {
    return 'Car vin: $vin \nCar model: $model';
  }
}
