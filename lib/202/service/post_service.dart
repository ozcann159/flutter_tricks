import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_tricks/202/service/post_model.dart';

class PostService {
  late final Dio _dio;

  PostService()
      : _dio =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  Future<bool> _addItemToService(PostModel postModel) async {
    final response = await _dio.post('posts', data: postModel);
    return response.statusCode == HttpStatus.created;
  }


    Future<bool> putItemToService(PostModel postModel, int id) async {
    final response = await _dio.put('put', data: postModel);
    return response.statusCode == HttpStatus.created;
  }

    Future<bool> deleteItemToService(PostModel postModel, int id) async {
    final response = await _dio.delete('delete', data: postModel);
    return response.statusCode == HttpStatus.created;
  }



  Future<List<PostModel>?> fetchItems() async {
    final response =
        await Dio().get('posts');
    if (response.statusCode == 200) {
      final _datas = response.data;

      if (_datas is List) {
        return _datas.map((e) => PostModel.fromJson(e)).toList();
      } 
      }
      return null;
    }
  }
