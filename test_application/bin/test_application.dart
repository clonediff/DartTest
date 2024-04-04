void main() {
  // Упражнение 1
  const list = [56, 59, 53, 75, 62, 61, 75, 65, 59, 62, 64, 53, 54, 62, 69, 53, 55, 62, 54, 66, 55, 57, 58, 75, 72, 55, 51, 56, 71, 66, 57, 56, 59, 73, 68, 57, 50, 54, 62, 68, 59, 64, 59, 59, 71, 68, 57, 54, 53, 72];
  final mySet = list.toSet();
  print(mySet);
  var avg = 0.0;
  for (var number in mySet) {
    avg += number;
  }
  avg /= mySet.length;
  print(avg);

  // Упражнение 2
  const a = {5, 7};
  const b = {7, 10};
  final set = a.union(b).difference(a.intersection(b));
  print(set);
  var sum = 0;
  for (var number in set)
  {
    sum += number;
  }
  print(sum);

  // Упражнение 3
  String initialText = "How many sheets could a sheet slitter slit if a sheet slitter could slit sheets?";
  final List<String> words = [for (var word in initialText.split(RegExp(r'\W'))) if (word.isNotEmpty) word];
  print(words);
  final uniqueWords = words.toSet();
  print(uniqueWords);
  print(uniqueWords.length);
}