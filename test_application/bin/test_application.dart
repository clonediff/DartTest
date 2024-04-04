String topLevelVariable = 'Top Level Vairable';

void main() {
  Function person = getName;
  person();
  person = getLastName;
  person();

  getPerson(getName);
  getPerson(getLastName);

  Function myPerson = getNameOrLastName('Konstantin');
  myPerson();

  Function addTwoNumbers = (int a, int b) {
    var sum = a + b;
    print(sum);
  };
  addTwoNumbers(2, 3);

  addTwoNumbers = (int a, int b) => print(a + b);
  addTwoNumbers(2, 3);

  int result = operationNumbers(5, 2, (a, b) => a - b);
  print(result);

  const listNumbers = [1, 2, 3, 4, 5, 6];

  final doubleElement = (num number) => print(2 * number);
  listNumbers.forEach(doubleElement);

  final carColor = {
    'bmw': 'red',
    'volvo': 'green'
  };

  carColor.forEach((car, color) => print('$car is $color'));

  final looped = <int>[];
  for(final x in listNumbers) {
    looped.add(x * x);
  }
  print(looped);

  final mapped = listNumbers.map((x) => x * x);
  print(mapped);

  final odds = listNumbers.where((element) => element.isOdd);
  print(odds);

  // Первый элемент сразу кладет в аккумулятор => падает ошибка, если нет элементов
  final total = listNumbers.reduce((sum, element) {
      print('$sum + $element');
      return sum + element;
    });
  print(total);

  // Можно задать начальное значение аккумулятора
  final totalWithFold = listNumbers.fold(0, (sum, element) {
      print('$sum + $element');
      return sum + element;
    });
  print(totalWithFold);

  const cars = ['bmw', 'volvo', 'mersedes', 'lada'];
  final bigCars = cars
    .where((car) => car.length > 4)
    .map((car) => car.toUpperCase())
    .toList();
  print(bigCars);

  final bigCars1 = <String>[];
  for (var car in cars) {
    if (car.length > 4) {
      var upperCase = car.toUpperCase();
      bigCars1.add(upperCase);
    }
  }
  print(bigCars1);

  String variableInsideMain = 'Variable Inside Main';

  void myFunction() {
    String variableInsideMyFunction = 'Variable Inside My Function';
    print('Inside My Function');

    void nestedFunction() {
      String variableInsideNestedFunction = 'Variable Inside Nested Function';
      print(topLevelVariable);
      print(variableInsideMain);
      print(variableInsideMyFunction);
      print(variableInsideNestedFunction);
      print('Inside Nested Function');
    }

    nestedFunction();
  }

  myFunction();

  Function add = addNumbersWithFunc(4);
  int addResult = add(6);
  print(addResult);
  print(addNumbersWithFunc(5)(3));
  print(addNumbersWithFunc2(5)(3));
}

Function addNumbersWithFunc2(int x) {
  return (int y) => x + y;
}

Function addNumbersWithFunc(int x) {
  int sum(int y) {
    return x + y;
  }
  return sum;
}

int operationNumbers(int a, int b, Function operation) => operation(a, b);

void addNumbers(int a, int b) {
  var sum = a + b;
  print(sum);
}

Function getNameOrLastName(String nameOrLastName) {
  if (nameOrLastName == 'Konstantin') return getName;
  return getLastName;
}

void getPerson(Function myFunction) {
  myFunction();
}

void getName() {
  print('Konstantin');
}

void getLastName() {
  print('Kokorin');
}

String circleArea(int radius) {
  return 'Circle Area is ${3.14 * radius * radius}';
}

String person({
  required String firstName,
  String lasName = 'adasdasd',
  int? age,
}) {
  return 'First Name: $firstName, Last Name: $lasName, Age: $age';
}
