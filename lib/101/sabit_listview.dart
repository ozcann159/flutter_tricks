import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.sunny),
            title: Text('Güneş'),
            subtitle: Text('Güneş alt başlık'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("Güneş Tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.brightness_2),
            title: Text('Ay'),
            subtitle: Text('Ay alt başlık'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("Ay Tıklandı");
            },
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Yıldız'),
            subtitle: Text('Yıldız alt başlık'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print("Yıldız Tıklandı");
            },
          ),
          GestureDetector(
            onTap: () {
              print('Card Tıklandı');
            },
            child: const Card(
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text('Card Tasarım'),
                    Spacer(),
                    Icon(
                      Icons.abc,
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Container Tıklandı');
            },
            child: Container(
              height: 50,
              color: Colors.red,
              child: Text('Merhaba'),
            ),
          )
        ],
      ),
    );
  }
}
