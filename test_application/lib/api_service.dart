import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test_application/model/post.dart';

class ApiService {
  fetchPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw HttpException('Не удалось получить посты. Код сервера: ${response.statusCode}');
      }

      final jsonString = response.body;
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final List<Post> posts = jsonList.map((post) => Post.fromJson(post)).toList();

      for (var post in posts) {
        print(post);
      }
    } on SocketException {
      print('Не удаётся получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }

  }
}