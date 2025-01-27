import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/sp_login_uygulamasi.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  String? spKullaniciAdi;
  String? spSifre;

  Future<void> oturumBilgisiOku() async {
    var sp = await SharedPreferences.getInstance();
    setState(() {
      spKullaniciAdi = sp.getString("kullaniciAdi") ?? "kullanıcı adı yok";
      spKullaniciAdi = sp.getString("sifre") ?? "Şifre yok";
    });
  }

  Future<void> cikisYap() async {
    var sp = await SharedPreferences.getInstance();
    sp.remove("kullaniciAdi");
    sp.remove("şifre");
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => SpLoginUygulamasi(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    oturumBilgisiOku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anasayfa'),
        actions: [
          IconButton(
            onPressed: () {
              cikisYap();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Kullanıcı Adı :$spKullaniciAdi",
              style: TextStyle(fontSize: 30),
            ),
            Text(
              "Şifre: $spSifre",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}
