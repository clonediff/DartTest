import 'package:test_application/api_service.dart';
import 'package:test_application/model/post.dart';

void main() async {
  print('Получение постов...');

  await ApiService().fetchPosts();

  final newPost = Post(id: '3', title: 'Post 3', body: 'Body of Post 3');
  print('\nСоздание нового поста...');
  await ApiService().createPost(newPost);

  print('\nПолучение постов после создания нового поста...');
  await ApiService().fetchPosts();

  final updateId = '3';
  final updatedPost =
      Post(id: updateId, title: 'Update Post 3', body: 'Update Body 3');
  print('\nОбнволение поста с ID $updateId...');
  await ApiService().updatePost(updateId, updatedPost);

  print('Удаление поста с ID: 3...');
  await ApiService().deletePost('3');

  print('\nПолучение постов после удаления поста...');
  await ApiService().fetchPosts();
}
