import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:flutter_tricks/202/service/post_model.dart';

class ServicePostLearnView extends StatefulWidget {
  const ServicePostLearnView({Key? key}) : super(key: key);

  @override
  _ServicePostLearnViewState createState() => _ServicePostLearnViewState();
}

class _ServicePostLearnViewState extends State<ServicePostLearnView> {
  List<PostModel>? _items;
  late final Dio _dio;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  TextEditingController _titleController = TextEditingController();
  TextEditingController _bodyController = TextEditingController();
  TextEditingController _userIdController = TextEditingController();
  
  Future<bool> _addItemToService(PostModel postModel) async {
    final response = await _dio.post('posts', data: postModel);
    return response.statusCode == HttpStatus.created;
  }

  @override
  void initState() {
    super.initState();
    _dio = Dio(
      BaseOptions(baseUrl: _baseUrl),
    );
  }

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'Body'),
            ),
            TextField(
              controller: _userIdController,
              keyboardType: TextInputType.number,
              inputFormatters: [],
              decoration: InputDecoration(labelText: 'UserId'),
            ),
            TextButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty &&
                    _bodyController.text.isNotEmpty &&
                    _userIdController.text.isNotEmpty) {
                  final model = PostModel(
                    body: _bodyController.text,
                    title: _titleController.text,
                    userId: int.tryParse(_userIdController.text),
                  );
                  _addItemToService(model);
                }
              },
              child: Text('Send'),
            ),
          ],
        ));
  }
}

class _PostCard extends StatelessWidget {
  _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        title: Text(
          _model?.title ?? '',
          style: TextStyle(color: Colors.red),
        ),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
