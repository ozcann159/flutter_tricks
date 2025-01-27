import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class DosyaIslemleri extends StatefulWidget {
  const DosyaIslemleri({super.key});

  @override
  State<DosyaIslemleri> createState() => _DosyaIslemleriState();
}

class _DosyaIslemleriState extends State<DosyaIslemleri> {
  var tfgirdi = TextEditingController();
  Future<void> veriYaz() async {
    var ad = await getApplicationDocumentsDirectory();

    var uygulamaDosyalamaYolu = await ad.path;

    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

    dosya.writeAsString(tfgirdi.text);

    tfgirdi.text = "";
  }

  Future<void> veriOku() async {
    try {
      var ad = await getApplicationDocumentsDirectory();

      var uygulamaDosyalamaYolu = await ad.path;

      var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");

      String okunanVeri = await dosya.readAsString();

      tfgirdi.text = okunanVeri;
    } catch (e) {
      e.toString();
    }
  }

  Future<void> veriSil() async {
    var ad = await getApplicationDocumentsDirectory();

    var uygulamaDosyalamaYolu = await ad.path;

    var dosya = File("$uygulamaDosyalamaYolu/dosyam.txt");
    if (dosya.existsSync()) {
      dosya.delete();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfgirdi,
                decoration: InputDecoration(
                  hintText: "Veri Giriniz",
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    veriYaz();
                  },
                  child: Text("Yaz"),
                ),
                ElevatedButton(
                  onPressed: () {
                    veriOku();
                  },
                  child: Text("Oku"),
                ),
                ElevatedButton(
                  onPressed: () {
                    veriSil();
                  },
                  child: Text("Sil"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
