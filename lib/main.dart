import 'package:flutter/material.dart';
import 'package:flutter_tricks/widgets/date_picker.dart';
import 'package:flutter_tricks/widgets/drawer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyDatePicker(),
    );
  }
}
