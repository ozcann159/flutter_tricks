import 'package:flutter/material.dart';

class GridViewLearn extends StatefulWidget {
  const GridViewLearn({super.key});

  @override
  State<GridViewLearn> createState() => _GridViewLearnState();
}

class _GridViewLearnState extends State<GridViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 2 / 1,
        children: [
          GestureDetector(
            onTap: () {
              print("Güneş Tıklandı");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.wb_sunny),
                  Text('Güneş'),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print("Ay Tıklandı");
            },
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.brightness_2),
                  Text('Ay'),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Text('Yıldız'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
