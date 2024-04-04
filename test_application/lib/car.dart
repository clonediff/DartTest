class Car {
  final int _vin;
  final String _model;

  // Car(int vin, String model) {
  //   this.vin = vin;
  //   this.model = model;
  // }

  // Car(this.vin, this.model);

  const Car({required int vin, String model = 'unknown'})
      : _vin = vin,
        _model = model;

  // Требуется инициализация по умолчанию у полей класса
  // Car.volvo() {
  //   vin = 200;
  //   model = 'Volvo';
  // }

  // Инициализация по умолчанию у полей класса не требуется
  const Car.volvo() : this(vin: 200, model: 'Volvo');

  factory Car.reno() {
    return Car(vin: 300, model: 'Reno');
  }

  factory Car.fromJson(Map<String, dynamic>json) {
    final carVin = json['vin'] as int;
    final carModel = json['model'] as String;
    return Car(vin: carVin, model: carModel);
  }

  String printNewCar() {
    return 'My new car has vin: $_vin and model: $_model';
  }

  @override
  String toString() {
    return 'Car vin: $_vin \nCar model: $_model';
  }
}
