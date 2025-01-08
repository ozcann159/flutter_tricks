import 'package:flutter/material.dart';

class DetaySayfa extends StatefulWidget {
  String ulkeAdi;
   DetaySayfa({
  
     required this.ulkeAdi,
  }); 
 
  @override
  State<DetaySayfa> createState() => _DetaySayfaState();
}

class _DetaySayfaState extends State<DetaySayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detay Sayfa"),
      ),
      body: Center(
        child: Text(widget.ulkeAdi),
      ),
    );
  }
}
