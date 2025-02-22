import 'package:flutter_tricks/models/Kisiler.dart';
import 'package:flutter_tricks/models/VeritabaniYardimcisi.dart';

class Kisilerdao {
  Future<List<Kisiler>> tumKisiler() async {
    var db = await Veritabaniyardimcisi.veritabaniErisim();
    List<Map<String, dynamic>> maps =
        await db.rawQuery("SELECT * FROM kisiler");

    return List.generate(maps.length, (i) {
      var satir = maps[i];

      return Kisiler(satir["kisi_id"], satir["kisi_ad"], satir["kisi_yas"]);
    });
  }

  Future<void> kisiEkle(String kisi_ad, int kisi_yas) async {
    var db = await Veritabaniyardimcisi.veritabaniErisim();

    var bilgiler = Map<String, dynamic>();
    bilgiler["kisi_ad"] = kisi_ad;
    bilgiler["kisi_yas"] = kisi_yas;

    await db.insert("kisiler", bilgiler);
  }

  Future<void> kisiSil(int kisi_id) async {
    var db = await Veritabaniyardimcisi.veritabaniErisim();

    await db.delete("kisiler", where: "kisi_id = ?", whereArgs: [kisi_id]);
  }
}
