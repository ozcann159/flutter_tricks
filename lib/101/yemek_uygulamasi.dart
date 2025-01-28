import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/detay2_sayfa.dart';
import 'package:flutter_tricks/models/yemekler.dart';

class YemekUygulamasi extends StatefulWidget {
  const YemekUygulamasi({super.key});

  @override
  State<YemekUygulamasi> createState() => _YemekUygulamasiState();
}

class _YemekUygulamasiState extends State<YemekUygulamasi> {
  Future<List<Yemekler>> yemekleriGetir() async {
    var yemekListesi = <Yemekler>[];

    var y1 = Yemekler(1, "Köfte", "kofte.png", 15.99);
    var y2 = Yemekler(2, "Ayran", "ayran.png", 2.0);
    var y3 = Yemekler(3, "Fanta", "fanta.png", 3.0);
    var y4 = Yemekler(4, "Makarna", "makarna.png", 14.99);
    var y5 = Yemekler(5, "Kadayıf", "kadayif.png", 12.99);
    var y6 = Yemekler(6, "Baklava", "baklava.png", 20.00);
    yemekListesi.add(y1);
    yemekListesi.add(y2);
    yemekListesi.add(y3);
    yemekListesi.add(y4);
    yemekListesi.add(y5);
    yemekListesi.add(y6);
    return yemekListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Yemekler',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: FutureBuilder(
          future: yemekleriGetir(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var yemekListesi = snapshot.data;
              return ListView.builder(
                itemCount: yemekListesi!.length,
                itemBuilder: (context, index) {
                  var yemek = yemekListesi[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Detay2Sayfa(yemek: yemek),
                          ),
                        );
                      },
                      child: Card(
                        child: Row(
                          children: [
                            SizedBox(
                                height: 150,
                                width: 150,
                                child: Image.asset(
                                    "assets/images/${yemek.yemek_resim_adi}")),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  yemek.yemek_adi,
                                  style: const TextStyle(fontSize: 25),
                                ),
                                Text(
                                  "${yemek.yemek_fiyat} \u20BA)",
                                  style: const TextStyle(
                                      fontSize: 25, color: Colors.blue),
                                ),
                              ],
                            ),
                            const Spacer(),
                            const Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center();
            }
          }),
    );
  }
}
