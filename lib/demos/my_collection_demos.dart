import 'package:flutter/material.dart';

class MyCollectionDemos extends StatefulWidget {
  const MyCollectionDemos({super.key});

  @override
  _MyCollectionDemosState createState() => _MyCollectionDemosState();
}

class _MyCollectionDemosState extends State<MyCollectionDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/images/photo.jpg',
          title: 'Abstract Art',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/images/photo.jpg',
          title: 'Abstract Art',
          price: 3.5),
      CollectionModel(
          imagePath: 'assets/images/photo.jpg',
          title: 'Abstract Art',
          price: 3.6),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            child: SizedBox(
              height: 300,
              child: Column(
                children: [
                  Image.asset(name)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;
  CollectionModel({
    required this.imagePath,
    required this.title,
    required this.price,
  });
}
