import 'dart:async';

StreamSubscription<int>? subscription;

void main() {
  final stream = Stream.periodic(Duration(seconds: 1), (tick) => tick);

  subscription = stream.listen((data) {
    print('Получено: $data');
  });

  Future.delayed(Duration(seconds: 5), () {
    print('Приостановка потока');
    subscription?.pause();
  });

  Future.delayed(Duration(seconds: 10), () {
    print('Возобновление потока');
    subscription?.resume();
  });

  Future.delayed(Duration(seconds: 15), () {
    print('Отписка от потока');
    subscription?.cancel();
  });
}
