void main() {
  // Упражнение 1
  for (int i = 1; i <= 100; i++)
  {
    if (i % 15 == 0) {
      print('Super Quiz');
    } else if (i % 3 == 0) {
      print('Super');
    } else if (i % 5 == 0) {
      print('Quiz');
    } else {
      print(i);
    }
  }

  // Упражнение 2
  const a = 2;
  const b = 555;
  const c = 236455;

  var cur = a;
  var length = 0;
  while (cur != 0)
  {
    cur ~/= 10;
    length++;
  }
  print('a=$a length: $length');
  
  cur = b;
  length = 0;
  while (cur != 0)
  {
    cur ~/= 10;
    length++;
  }
  print('b=$b length: $length');
  
  cur = c;
  length = 0;
  while (cur != 0)
  {
    cur ~/= 10;
    length++;
  }
  print('c=$c length: $length');

  // Упражнение 3
  const year1 = 1705;
  const year2 = 1900;
  const year3 = 1601;
  const year4 = 2000;
  print(year1 ~/ 100 + (year1 % 100 == 0 ? 0 : 1));
  print(year2 ~/ 100 + (year2 % 100 == 0 ? 0 : 1));
  print(year3 ~/ 100 + (year3 % 100 == 0 ? 0 : 1));
  print(year4 ~/ 100 + (year4 % 100 == 0 ? 0 : 1));
}
