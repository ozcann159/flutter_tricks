import 'dart:nativewrappers/_internal/vm_shared/lib/collection_patch.dart';

import 'package:bayrakquizuygulamasi/bayraklar.dart';
import 'package:bayrakquizuygulamasi/sonucEkrani.dart';
import 'package:flutter/material.dart';

class QuizEkrani extends StatefulWidget {
  const QuizEkrani({super.key});

  @override
  State<QuizEkrani> createState() => _QuizEkraniState();
}

class _QuizEkraniState extends State<QuizEkrani> {
  var sorular = <Bayraklar>[];
  var yanlisSecenekler = <Bayraklar>[];
  late Bayraklar dogruSoru;
  var tumSecenekler = HashSet<Bayraklar>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Ekranı"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Dogru: 1",
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  "Yanlış : 1",
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Text(
              "1. Soru",
              style: TextStyle(fontSize: 30),
            ),
            Image.asset("resimler/turkiye.png"),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SonucEkrani(
                        dogruSayisi: 3,
                      ),
                    ),
                  );
                },
                child: Text(
                  "Buton A",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizEkrani(),
                    ),
                  );
                },
                child: Text(
                  "Buton B",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizEkrani(),
                    ),
                  );
                },
                child: Text(
                  "Buton C",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              width: 250,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuizEkrani(),
                    ),
                  );
                },
                child: Text(
                  "Buton D",
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
