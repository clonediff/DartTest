import 'dart:collection';

void main() {
  // Упражнение 1
  var pizzaPrices = {
    'Venice': 289,
    'Double Cheese': 359,
    'Roman Margherita': 299,
  };

  // Подзадача 1
  const myOrder = ['Venice', 'Double Cheese', 'Roman Margherita'];
  var orderPrice = 0;
  var notFound = <String>[];
  for (var pizza in myOrder) {
    var pizzaPrice = pizzaPrices[pizza];
    if (pizzaPrice == null) {
      notFound.add(pizza);
    } else {
      orderPrice += pizzaPrice;
    }
  }
  print('Заказано ${myOrder.length - notFound.length} пиццы из ${myOrder.length} на сумму: $orderPrice рублей');
  for (var notFoundPizza in notFound) {
    print('$notFoundPizza нет в меню');
  }

  // Подзадача 2
  pizzaPrices['Pepperoni'] = 199;
  print('Новое меню: $pizzaPrices');

  // Подзадача 3
  final sortedPizzaPrices = SplayTreeMap<String, int>((a, b) => a.compareTo(b));
  sortedPizzaPrices.addEntries(pizzaPrices.entries);
  print('Сортированное меню по ключам: $sortedPizzaPrices');
}
