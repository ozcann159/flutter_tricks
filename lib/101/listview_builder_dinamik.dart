import 'package:flutter/material.dart';

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
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Text(
                      ulkeler[index],
                    ),
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
