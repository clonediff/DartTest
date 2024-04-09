void main() {
  print('Запуск функции main()');

  final myFuture = Future.delayed(Duration(seconds: 3), () {
    print('Future начал выполняться');
    return 'Данные успешно загружены';
    throw 'Сервер недоступен';
  });

  myFuture
    .then((value) => value.split(''))
    .then((value) => value.map((e) => e.toUpperCase()))
    .then((value) => print('Результат: $value'))
    .catchError(
      (error) => print('Ошибка: $error'), 
      test: (error) => error.runtimeType == String,
    )
    .whenComplete(() => print('Future завершил свою работу'));

  print(myFuture);

  print('Завершение работы функции main()');
}