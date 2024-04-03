void main() {
  // Упражнение 1
  const nums = <double>[1, 2.7, 5, 8.4, 10];
  var sum = 0.0;
  for(var num in nums) { 
    sum += num;
  }
  print(sum);

  // Упражнение 2
  const list = [60, 999, 14, "dart1", 45, 95, "dart", 1];

  const value1 = 'dart';
  var result = false;
  for(var item in list) {
    if (item == value1) {
      result = true;
      break;
    }
  }
  print(result);
  
  const value2 = 15;
  result = false;
  for(var item in list) {
    if (item == value2) {
      result = true;
      break;
    }
  }
  print(result);
  
  // Упражнение 3
  var list3 = [8, 2, 5, 4, 3, 9, 7, 1, 6];
  print('list is $list3');
  print('list length is ${list3.length} elements');
  list3.sort((a, b) => b.compareTo(a));
  print('descending sorted list: $list3');
  var newList3 = [for(int i = 0; i < 5; i++) list3[i]];
  newList3.sort();
  print('sorted sublist with length of 5 elements: $newList3');
  var indexOf7 = newList3.indexOf(7);
  print('index of a value \'7\' in list is $indexOf7');
  newList3.removeWhere((element) => 7 <= element && element <= 9);
  print('list with remove values from 7 to 9: $newList3');
  list3.sort();
  list3 = [for(var num in list3) const[1, 2, 3].contains(num) ? num * 10 : num];
  print('sorted list with replaced values [1, 2, 3, ...] => [10, 20, 30, ...]: $list3');
  var newList32 = [...list3, ...newList3];
  print('union list: $newList32');
}