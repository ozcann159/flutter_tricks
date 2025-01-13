import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/sayfa1.dart';
import 'package:flutter_tricks/101/sayfa2.dart';
import 'package:flutter_tricks/101/sayfa3.dart';

class TabbarLiew extends StatefulWidget {
  const TabbarLiew({Key? key}) : super(key: key);

  @override
  _TabbarLiewState createState() => _TabbarLiewState();
}

class _TabbarLiewState extends State<TabbarLiew> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Tabbar'),
          backgroundColor: Colors.blueAccent,
          bottom: TabBar(
            tabs: [
              Tab(text: "Bir"),
              Tab(
                icon: Icon(
                  Icons.looks_two,
                  color: Colors.cyanAccent,
                ),
              ),
              Tab(
                text: "Üç",
                icon: Icon(Icons.looks_3),
              ),
            ],
            indicatorColor: Colors.pink,
            labelColor: Colors.orange,
          ),
        ),
        body: TabBarView(
          children: [
            Sayfa1(),
            Sayfa2(),
            Sayfa3(),
          ],
        ),
      ),
    );
  }
}
