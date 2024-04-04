late int global;

void main() {
  global = 1;
  print(global);

  print('Simple order pizza');
  var pizza = Pizza().orderPizza();
  // pizza.price = 20; // LateInitializationError: Field 'price' has already been initialized.
  print('Print simple order pizza');
  print(pizza);
  print('');

  print('orderPizza');
  var pizza1 = Pizza().orderPizza();
  print('Print orderPizza');
  print(pizza1);
  print('');

  print('late orderPizza');
  late var pizza2 = Pizza().orderPizza();
  print('print late orderPizza');
  print(pizza2);
}

class Pizza {
  late String name;
  late final double price;

  Pizza() {
    name = 'Spring';
    price = 10.5;
  }

  String orderPizza() {
    print('Coocking pizza...');
    return 'Your pizza $name is ready';
  }

  @override
  String toString() => 'Pizza $name and price: $price';
}