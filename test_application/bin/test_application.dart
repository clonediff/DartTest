void main() {
  try {
    print(factorial(-1));
  } catch (e, s) {
    if (e is FactorialException) {
      print(e.errorMessage());
    }
    print(s);
  } finally {
    // Code
  }
}

class FactorialException implements Exception {
  String errorMessage() {
    return "Input number must be more than zero";
  }
}

int factorial (int n) {
  if (n < 1) throw FactorialException();
  int fact = 1; 
  for (var i = 2; i <= n; i++) {
    fact *= i;
  }
  return fact;
}

void tryCatchShowCases() {
  try {
    var list = [double.parse('3.14'), 2, 3];
    print(list);
  } catch (e) {
    print('The exception: $e');
  }
  
  try {
    var list = [double.parse('3,14'), 2, 3];
    print(list);
  } catch (e) {
    print('The exception: $e');
  }
  
  try {
    var list = [double.parse('3.14'), 2, 3];
    print('Result: ${list[5]}');
  } catch (e) {
    print('The exception: $e');
  }
  
  try {
    var list = [double.parse('3.14'), 2, 3];
    print('Result: ${list[5]}');
  } on RangeError {
    print('Out of bound of list'); 
  }catch (e) {
    print('The exception: $e');
  }
  
  try {
    var list = [double.parse('3,14'), 2, 3];
    print('Result: ${list[5]}');
  } on RangeError {
    print('Out of bound of list'); 
  }catch (e, s) {
    print('The exception: $e');
    print('Stack Trace: $s');
  } finally {
    print('This is Finally and is always executed');
  }
}