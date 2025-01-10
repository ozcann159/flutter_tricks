import 'package:flutter/material.dart';

import 'package:flutter_tricks/models/yemekler.dart';

// ignore: must_be_immutable
class Detay2Sayfa extends StatefulWidget {
  Yemekler yemek;
  Detay2Sayfa({
    super.key,
    required this.yemek,
  });

  @override
  State<Detay2Sayfa> createState() => _Detay2SayfaState();
}

class _Detay2SayfaState extends State<Detay2Sayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.yemek.yemek_adi,
          style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/${widget.yemek.yemek_resim_adi}"),
            Text(
              "${widget.yemek.yemek_fiyat} \u{20Ba}",
              style: const TextStyle(fontSize: 20, color: Colors.blue),
            ),
            const SizedBox(
              width: 200,
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                print("Sipariş ver tıklandı");
              },
              child: Text(
                "Sipariş Ver",
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Buton arka plan rengi
              ),
            ),
          ],
        ),
      ),
    );
  }
}
