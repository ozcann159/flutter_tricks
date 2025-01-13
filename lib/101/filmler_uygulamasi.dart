import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/detaysayfa3.dart';
import 'package:flutter_tricks/models/filmler.dart';

class FilmlerUygulamasi extends StatefulWidget {
  const FilmlerUygulamasi({super.key});

  @override
  State<FilmlerUygulamasi> createState() => _FilmlerState();
}

class _FilmlerState extends State<FilmlerUygulamasi> {
  Future<List<Filmler>> filmleriGetir() async {
    var filmlerListesi = <Filmler>[];

    var f1 = Filmler(
        film_id: 1,
        film_adi: "Anadoluda",
        film_resim_adi: "anadoluda.png",
        film_fiyat: 15.99);
    var f2 = Filmler(
        film_id: 2,
        film_adi: "Django",
        film_resim_adi: "django.png",
        film_fiyat: 9.99);
    var f3 = Filmler(
        film_id: 3,
        film_adi: "İnception",
        film_resim_adi: "inception.png",
        film_fiyat: 20.90);
    var f4 = Filmler(
        film_id: 4,
        film_adi: "İnterstellar",
        film_resim_adi: "interstellar.png",
        film_fiyat: 17.00);
    var f5 = Filmler(
        film_id: 5,
        film_adi: "The Hate Fuleight",
        film_resim_adi: "thehatefuleight.png",
        film_fiyat: 25.00);
    var f6 = Filmler(
        film_id: 6,
        film_adi: "The Pianist",
        film_resim_adi: "thepianist.png",
        film_fiyat: 12.90);

    filmlerListesi.add(f1);
    filmlerListesi.add(f2);
    filmlerListesi.add(f3);
    filmlerListesi.add(f4);
    filmlerListesi.add(f5);
    filmlerListesi.add(f6);

    return filmlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Filmler'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent,
        ),
        body: FutureBuilder(
            future: filmleriGetir(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var filmlerListesi = snapshot.data;
                return GridView.builder(
                    itemCount: filmlerListesi!.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, childAspectRatio: 2 / 3.5),
                    itemBuilder: (context, index) {
                      var film = filmlerListesi[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetaySayfa3(film),
                              ),
                            );
                          },
                          child: Card(
                            child: Column(
                              children: [
                                Image.asset(
                                    'assets/images/${film.film_resim_adi}'),
                                Text(
                                  film.film_adi,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "${film.film_fiyat} \u20BA)",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              } else {
                return Center(
                  child: Text("Error"),
                );
              }
            }));
  }
}
