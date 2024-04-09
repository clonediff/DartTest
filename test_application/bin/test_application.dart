import 'dart:async';

void main() async {
  await countdownWithStream(5);
  await countdown(5);
}

Future<void> countdownWithStream(int n) async {
  final controller = StreamController<int>();

  controller.stream.listen(
    (event) => print(event),
    onDone: () => print('Готово'),
  );

  for (var i = n; i >= 0; i--) {
    await Future.delayed(Duration(seconds: 1));
    controller.sink.add(i);
  }
  controller.sink.close();
}

Future<void> countdown(int n) async {
  for (var i = n; i >= 0; i--) {
    await Future<void>.delayed(Duration(seconds: 1), () => print(i));
  }
}
