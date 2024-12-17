import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/icon_learn.dart';
import 'package:flutter_tricks/utils/theme/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      home: const IconLearn(),
    );
  }
}
