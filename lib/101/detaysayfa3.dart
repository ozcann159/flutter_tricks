import 'package:flutter/material.dart';

import 'package:flutter_tricks/models/filmler.dart';

class DetaySayfa3 extends StatefulWidget {
  Filmler film;
  DetaySayfa3(
    this.film,
  );

  @override
  State<DetaySayfa3> createState() => _DetaySayfa3State();
}

class _DetaySayfa3State extends State<DetaySayfa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.film_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/${widget.film.film_resim_adi}"),
            SizedBox(height: 10),
            Text(
              "${widget.film.film_fiyat} \u20BA)",
              style: TextStyle(fontSize: 48),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent, // Buton arka plan rengi
              ),
              onPressed: () {
                print("${widget.film.film_adi} ${widget.film.film_fiyat} \u20BA' ye Kiralandı");
              },
              child: Text(
                'Kirala',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
