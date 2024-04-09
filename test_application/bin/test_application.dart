import 'package:test_application/api_service.dart';

void main() async {
  print('Получение постов...');

  await ApiService().fetchPosts();
}

