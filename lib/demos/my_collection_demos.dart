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
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 40),
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        _items[index].imagePath,
                        fit: BoxFit.fill,
                        height: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_items[index].title),
                          Text('${_items[index].price}')
                        ],
                      ),
                    )
                  ],
                ),
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
