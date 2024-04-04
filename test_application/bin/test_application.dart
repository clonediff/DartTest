import 'package:test_application/squares.dart';

void main() {
  Iterable<int> hundredSquare() sync* {
    for (int i = 1; true; i++) {
      yield i * i;
    }
  }

  final squares = hundredSquare();
  for (var square in squares) {
    print(square);
    if (square == 50 * 50) break;
  }

  final squares2 = HundredSquares();
  for (var square in squares2) {
    print(square);
    if (square == 50 * 50) break;
  }
}
