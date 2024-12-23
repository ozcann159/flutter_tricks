import 'package:flutter/material.dart';

class ColorLearning extends StatelessWidget {
  const ColorLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: ColorsItems.porchase,
        child: Text('data'),
      ),
    );
  }
}

class ColorsItems{
  static Color porchase = Color(0xFFEDBF61);
  
  final Color sulu = Color.fromRGBO(198, 237, 97, 1);
}