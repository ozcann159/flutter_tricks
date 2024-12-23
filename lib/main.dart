import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/color.dart';
import 'package:flutter_tricks/101/icon_learn.dart';
import 'package:flutter_tricks/101/list_view_builder.dart';
import 'package:flutter_tricks/101/navigation_lear.dart';
import 'package:flutter_tricks/demos/my_collection_demos.dart';
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
      theme: ThemeData.dark().copyWith(),
      home: const NavigationLearn(),
    );
  }
}
