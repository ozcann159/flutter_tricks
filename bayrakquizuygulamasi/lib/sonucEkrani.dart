import 'package:bayrakquizuygulamasi/anasayfa.dart';
import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {
  int dogruSayisi;
  SonucEkrani({
    super.key,
    required this.dogruSayisi,
  });

  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sonuç Ekranı"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${widget.dogruSayisi} DOĞRU ${5 - widget.dogruSayisi} YANLIŞ",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "${((widget.dogruSayisi * 100) / 5).toInt()} Başarı",
              style: TextStyle(fontSize: 30, color: Colors.pink),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                    MaterialPageRoute(builder: (context) => Anasayfa()),
                  );
                },
                child: Text(
                  "TEKRAR DENE",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
