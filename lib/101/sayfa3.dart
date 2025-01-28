import 'package:flutter/material.dart';

class Sayfa3 extends StatefulWidget {
  const Sayfa3({ super.key });

  @override
  _Sayfa3State createState() => _Sayfa3State();
}

class _Sayfa3State extends State<Sayfa3> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Sayfa Üç",
        style: TextStyle(color: Colors.black54, fontSize: 30),
      ),
    );
  }
}