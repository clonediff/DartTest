class Car<T> {
  T id;
  String carName;

  Car(this.id, this.carName);

  void move<T1>(T1 speed) {
    print('The $carName. ID number: $id. Speed car: $speed');
  }
}
