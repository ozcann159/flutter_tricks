import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/color.dart';
import 'package:flutter_tricks/101/future_builderlisteleme.dart';
import 'package:flutter_tricks/101/icon_learn.dart';
import 'package:flutter_tricks/101/list_view_builder.dart';
import 'package:flutter_tricks/101/listview_builder_dinamik.dart';
import 'package:flutter_tricks/101/navigation_lear.dart';
import 'package:flutter_tricks/101/sabit_gridview.dart';
import 'package:flutter_tricks/101/sabit_listview.dart';
import 'package:flutter_tricks/202/model_learn_view.dart';
import 'package:flutter_tricks/202/service/service_learn_view.dart';
import 'package:flutter_tricks/202/tab_learn.dart';
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
      theme: ThemeData.light().copyWith(
          tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.green,
        indicatorColor: Colors.amber,
      )),
      home: FutureBuilderlisteleme(),
    );
  }
}
