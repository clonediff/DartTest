import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:test_application/model/post.dart';

class ApiService {
  Future<void> fetchPosts() async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.get(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось получить посты. Код сервера: ${response.statusCode}');
      }

      final jsonString = response.body;
      final List<dynamic> jsonList = jsonDecode(jsonString);
      final List<Post> posts =
          jsonList.map((post) => Post.fromJson(post)).toList();

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

  Future<void> createPost(Post newPost) async {
    final url = Uri.parse('http://localhost:3000/posts');
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-type': 'application/json',
        },
        body: json.encode(newPost.toJson()),
      );

      if (response.statusCode == 201) {
        final createdPost = Post.fromJson(json.decode(response.body));
        print('Пост успешно создан: $createdPost');
      } else {
        throw HttpException(
            'Не удалось создать пост. Код сервера: ${response.statusCode}');
      }
    } on SocketException {
      print('Не удаётся получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> updatePost(String postId, Post updatedPost) async {
    final url = Uri.parse('http://localhost:3000/posts/$postId');
    try {
      final response = await http.put(
        url,
        headers: {
          'Content-type': 'application/json',
        },
        body: json.encode(updatedPost.toJson()),
      );

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось обновить пост. Код сервера: ${response.statusCode}');
      }

      print('Пост успешно обновлен. $updatedPost');
    } on SocketException {
      print('Не удаётся получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }

  Future<void> deletePost(String postId) async {
    final url = Uri.parse('http://localhost:3000/posts/$postId');
    try {
      final response = await http.delete(url);

      if (response.statusCode != 200) {
        throw HttpException(
            'Не удалось удалить пост. Код сервера: ${response.statusCode}');
      }

      print('Пост успешно удален. Post ID: $postId');
    } on SocketException {
      print('Не удаётся получить доступ к ресурсу');
    } on FormatException {
      print('Неправильный формат данных');
    } catch (error) {
      print(error);
    }
  }
}
