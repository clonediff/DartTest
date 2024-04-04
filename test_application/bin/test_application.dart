void main() {
  final konstantin = Person('Konstantin', 'Kokorin');
  final ivan = Student('Ivan', 'Petrov');
  final vasya = StudentSwimmer('Vasya', 'Sidorov');
  final misha = StudentAthlet('Misha', 'Ivanov');

  final students = [ivan, vasya, misha];
  for (var student in students) {
    print(student.whoAmI());
  }
  print('');
  print('Vasya is Object: ${vasya is Object}');
  print('Vasya is Person: ${vasya is Person}');
  print('Vasya is Student: ${vasya is Student}');
  print('Vasya is StudentSwimmer: ${vasya is StudentSwimmer}');
  print('Vasya is StudentAthlet: ${vasya is StudentAthlet}');
  print('');

  final someStudent3 = SomeStudent1('Some', 'Student');
  someStudent3.grades.add(5);
  someStudent3.name = 'Jon';
  someStudent3.surname = 'Snow';
  print(someStudent3.getFullName());
  print('');

  final someStudent4 = SomeStudent2();
  // someStudent3.grades.add(5);
  // someStudent3.name = 'Jon';
  // someStudent3.surname = 'Snow';
  print(someStudent4.getFullName());
  print('');

  ivan.grades.add(4);
  vasya.grades.add(4);

  vasya.course = 'Flutter';
  misha.course = 'Dart';
  print(vasya.study());
  print('');
  print(misha.study());
  print('');

  print(konstantin.getFullName());
  print('');
  print(ivan.getFullName());
  print('');
  print(vasya.getFullName());
  print('');
  print(misha.getFullName());
}

class Person {
  String name;
  String surname;

  Person(this.name, this.surname);

  String getFullName() => '$name $surname';
}

class Student extends Person{
  List<int> grades = [];

  Student(super.name, super.surname);

  @override
  String getFullName()  => '${super.getFullName()} \nStudent has grades: $grades';

  String whoAmI() => 'I am a Student';
}

mixin Lerner {
  String? course;
  String study() => 'Course is $course';
}

class StudentSwimmer extends Student with Lerner {
  StudentSwimmer(super.name, super.surname);

  @override
  String getFullName() => '${super.getFullName()} \n${grades.every((grade) => grade != 2) ? 'You can swim' : 'Can\'t swim'}';

  @override
  String whoAmI() => 'I am Student Swimmer';
}

class StudentAthlet extends Student with Lerner {
  StudentAthlet(super.name, super.surname);
  static const minPracticeTime = 1;

  @override
  String whoAmI() => 'I am Student Athlet';
}

class SomeStudent1 extends StudentSwimmer {
  SomeStudent1(super.name, super.surname);
}

class SomeStudent2 with Lerner implements StudentSwimmer {
  @override
  List<int> grades = [4];

  @override
  String name = 'MyName';

  @override
  String surname = 'MySurname';

  @override
  String getFullName() => '$surname $name';
  
  @override
  String whoAmI() => 'I am SomeStudent2';
}
