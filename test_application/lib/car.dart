class Car {
  int _vin;
  String _model;

  // Car(int vin, String model) {
  //   this.vin = vin;
  //   this.model = model;
  // }

  // Car(this.vin, this.model);

  Car({required int vin, String model = 'unknown'})
      : _vin = vin,
        _model = model.toUpperCase() {
    print('Car: $_vin and $_model');
  }

  // Требуется инициализация по умолчанию у полей класса
  // Car.volvo() {
  //   vin = 200;
  //   model = 'Volvo';
  // }

  // Инициализация по умолчанию у полей класса не требуется
  Car.volvo() : this(vin: 200, model: 'Volvo');

  String printNewCar() {
    return 'My new car has vin: $_vin and model: $_model';
  }

  @override
  String toString() {
    return 'Car vin: $_vin \nCar model: $_model';
  }
}
