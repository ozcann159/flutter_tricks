import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  _ListViewBuilderState createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          print(index);
          return SizedBox(
            height: 200,
            child: Column(
              children: [
                Expanded(
                  child: Image.network('https://picsum.photos/200'),
                ),
                Text('$index'),
              ],
            ),
          );
        },
      ),
    );
  }
}
