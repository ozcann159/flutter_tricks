import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/anasayfa.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpLoginUygulamasi extends StatefulWidget {
  const SpLoginUygulamasi({super.key});

  @override
  State<SpLoginUygulamasi> createState() => _SpLoginUygulamasiState();
}

class _SpLoginUygulamasiState extends State<SpLoginUygulamasi> {
  var tfKullaniciAdi = TextEditingController();
  var tfSifre = TextEditingController();
  var scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> girisKontrol() async {
    var ka = tfKullaniciAdi.text;
    var s = tfSifre.text;

    if (ka == "admin" && s == "123") {
      var sp = await SharedPreferences.getInstance();

      sp.setString("kullaniciAdi", ka);
      sp.setString("sifre", s);

      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Anasayfa(),
          ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Giriş Hatalı"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Ekranı"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: tfKullaniciAdi,
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                ),
              ),
              TextField(
                controller: tfSifre,
                decoration: InputDecoration(hintText: "Şifre"),
              ),
              SizedBox(height: 12),
              ElevatedButton(
                onPressed: () {
                  girisKontrol();
                },
                child: Text('Giriş Yap'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
