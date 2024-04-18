void main() {
  final json = {'name': 'Konstantin', 'age': 38, 'height': 178};

  final person = getPerson(json);
  print(person.name);
  print(person.age);
  print(person.height);

  final (:name, :age, :height) = getPerson(json);
  print(name);
  print(age);
  print(height);

  final point1 = (x: 1, y: 2, z: 3);
  final point2 = (x: 1, y: 2, z: 3);
  print(point1 == point2);
}

({String name, int age, int height}) getPerson(Map<String, dynamic> json) {
  return (
    name: json['name'],
    age: json['age'],
    height: json['height'],
  );
}

class Person {
  final String name;
  final int age;
  final int height;

  const Person({required this.name, required this.age, required this.height});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      name: json['name'] as String,
      age: json['age'] as int,
      height: json['height'] as int,
    );
  }
}
