void main() {
  exercise1();
  print('');
  exercise2();
  print('');
  exercise3();
}

void exercise1(){
  const ex1Lists = [
    ['a', 'ab', 'abc'],
    ['abcde', 'ab', 'abc'],
    <String>[],
  ];
  for (var list in ex1Lists) {
    print('$list => ${getLengthsSum(list)}');
  }
}

int getLengthsSum(Iterable<String> list) {
  return list
    .map((e) => e.length)
    .fold(0, (sum, element) => sum + element);
}

void exercise2() {
  const ex2Lists = [
    [1, -10, 9, -1],
    [-1, -2, -3],
    <int>[],
    [1, 2],
  ];
  for (var list in ex2Lists) {
    print('$list => ${getPositivesSum(list)}');
  }
}

int getPositivesSum(Iterable<int> list) {
  return list
    .where((element) => element > 0)
    .fold(0, (sum, element) => sum + element);
}

void exercise3() {
  const list = ['dart', 'abc', 'good luck'];
  print(getStringTransformations(list).toList());
}

Iterable<int> getStringTransformations(Iterable<String> list) {
  return list.indexed
    .map((element) => element.$2.codeUnits
      .where((ch) => ch != ' '.codeUnits[0])
      .map((ch) => ch - 'a'.codeUnits[0] + 1)
      .fold(0, (sum, number) => sum + number) * (element.$1 + 1));
}