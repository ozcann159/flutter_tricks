import 'package:flutter/widgets.dart';

class PostModel1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel2 {
  int userId;
  int id;
  String title;
  String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(this.userId, this.id, this.title, this.body);
}

class PostModel4 {
  final int userId;
  final int id;
  final String title;
  final String body;
  PostModel4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

class PostModel5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel8 {
  final int? userId;
  final int? id;
  final String? title;
   String? body;
  PostModel8({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  void updateBody(String? data){
    if (data != null) {
      data.length;
    }
  }

  PostModel8 copyWith({
    ValueGetter<int?>? userId,
    ValueGetter<int?>? id,
    ValueGetter<String?>? title,
    ValueGetter<String?>? body,
  }) {
    return PostModel8(
      userId: userId != null ? userId() : this.userId,
      id: id != null ? id() : this.id,
      title: title != null ? title() : this.title,
      body: body != null ? body() : this.body,
    );
  }
}
