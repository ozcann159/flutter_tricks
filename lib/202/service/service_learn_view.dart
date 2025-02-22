import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tricks/202/service/post_model.dart';

class ServiceLearnView extends StatefulWidget {
  const ServiceLearnView({Key? key}) : super(key: key);

  @override
  _ServiceLearnViewState createState() => _ServiceLearnViewState();
}

class _ServiceLearnViewState extends State<ServiceLearnView> {
  List<PostModel>? _items;

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  Future<void> fetchItems() async {
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');

    if (response.statusCode == 200) {
      final _datas = response.data;

      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _items == null
          ? Center(child: CircularProgressIndicator()) // Yükleme ekranı
          : ListView.builder(
              itemCount: _items!.length,
              itemBuilder: (context, index) {
                return _PostCard(model: _items![index]);
              }),
    );
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
