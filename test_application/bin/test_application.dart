import 'dart:async';

StreamSubscription<int>? subscription;

void main() async {
  // readStream();
  // await readStreamAsyncForLoop();

  // final syncResult = syncGenerator();
  // print(syncResult);

  // final asyncResult = asyncGenerator();
  // asyncResult.listen(
  //   (event) => print(event),
  // );

  usingStreamController();
}

void usingStreamController() {
  final controller = StreamController<String>();
  final stream = controller.stream;
  final sink = controller.sink;

  stream.listen(
    (event) => print('Данные получены: $event'),
    onError: (error) => print(error),
    onDone: () => print('Sink закрыт'),
  );

  sink.add('Виноград');
  sink.add('Виноград');
  sink.add('Виноград');
  sink.addError(Exception('Вишня'));
  sink.add('Виноград');
  sink.add('Виноград');
  sink.close();
}

Iterable<int> syncGenerator() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i;
  }
}

Stream<int> asyncGenerator() async* {
  for (int i = 1; i <= 100; i++) {
    yield i;
  }
}

Future<void> readStreamAsyncForLoop() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);

  try {
    await for (var data in stream) {
      print('Получено: $data');
      throw Exception('Ошибка в событии');
    }
  } on Exception catch (error) {
    print(error);
  } finally {
    print('Все события завершены');
  }
}

void readStream() {
  final stream = Stream.periodic(
          Duration(seconds: 1),
          (tick) =>
              tick % 4 == 3 ? throw Exception('Исключение в событии') : tick)
      .take(5);

  subscription = stream
      .where((event) => event % 2 == 0)
      .map((event) => event * 10)
      .take(2)
      .listen(
    (data) {
      print('Получено: $data');
    },
    onError: (error) {
      print(error);
    },
    onDone: () {
      print('Все события завершены');
    },
    cancelOnError: true,
  );

  // Future.delayed(Duration(seconds: 5), () {
  //   print('Приостановка потока');
  //   subscription?.pause();
  // });

  // Future.delayed(Duration(seconds: 10), () {
  //   print('Возобновление потока');
  //   subscription?.resume();
  // });

  // Рекомендуется отписываться от потока даже если он закрылся
  Future.delayed(Duration(seconds: 7), () {
    print('Отписка от потока');
    subscription?.cancel();
  });
}
