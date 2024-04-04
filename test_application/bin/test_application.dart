void main() {
  final Animal cat = Cat();
  print(cat.isAlive);
  cat.eat();
  cat.move();
  // cat.meow();
  print(cat);
}

abstract class Animal {
  bool isAlive;
  Animal({required this.isAlive});

  void eat();
  void move();
  
  @override
  String toString() => 'I am $runtimeType';
}

class Cat extends Animal {
  Cat() : super(isAlive: true);

  @override
  void eat() => print('Chaw chaw');

  @override
  void move() => print('Jump jump');

  void meow() => print('Meow meow');
}