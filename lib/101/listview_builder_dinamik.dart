import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/detay_sayfa.dart';

class ListViewLearnDinamik extends StatefulWidget {
  const ListViewLearnDinamik({super.key});

  @override
  State<ListViewLearnDinamik> createState() => _ListViewLearnDinamikState();
}

class _ListViewLearnDinamikState extends State<ListViewLearnDinamik> {
  var ulkeler = [
    "Türkiye",
    "Almanya",
    "İtalya",
    "Norveç",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: ulkeler.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetaySayfa(
                    ulkeAdi: ulkeler[index],
                  ),
                ),
              );
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("Text ile ${ulkeler[index]} seçildi");
                        },
                        child: Text(
                          ulkeler[index],
                        ),
                      ),
                      Spacer(),
                      PopupMenuButton(
                        child: Icon(Icons.more_vert),
                        itemBuilder: (context) => [
                          PopupMenuItem(
                            value: 1,
                            child: Text('Sil'),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: Text('Güncelle'),
                          ),
                        ],
                        onSelected: (menuItemValue) {
                          if (menuItemValue == 1) {
                            print("${ulkeler[index]} silindi");
                          }
                          if (menuItemValue == 2) {
                            print("${ulkeler[index]} güncellendi");
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
