import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/color.dart';
import 'package:flutter_tricks/101/dosya_islemleri.dart';
import 'package:flutter_tricks/101/filmler_uygulamasi.dart';
import 'package:flutter_tricks/101/future_builderlisteleme.dart';
import 'package:flutter_tricks/101/icon_learn.dart';
import 'package:flutter_tricks/101/kisilerdao.dart';
import 'package:flutter_tricks/101/list_view_builder.dart';
import 'package:flutter_tricks/101/listview_builder_dinamik.dart';
import 'package:flutter_tricks/101/navigation_lear.dart';
import 'package:flutter_tricks/101/sabit_gridview.dart';
import 'package:flutter_tricks/101/sabit_listview.dart';
import 'package:flutter_tricks/101/sp_login_uygulamasi.dart';
import 'package:flutter_tricks/101/tabbar_liew.dart';
import 'package:flutter_tricks/101/yemek_uygulamasi.dart';
import 'package:flutter_tricks/202/animated_learn_view.dart';
import 'package:flutter_tricks/202/cache/shared_learn_cache.dart';
import 'package:flutter_tricks/202/image_learn_202.dart';
import 'package:flutter_tricks/202/model_learn_view.dart';
import 'package:flutter_tricks/202/oop_learn_view.dart';
import 'package:flutter_tricks/202/package_learn_view.dart';
import 'package:flutter_tricks/202/service/service_learn_view.dart';
import 'package:flutter_tricks/202/service/service_post_learn_view.dart';
import 'package:flutter_tricks/202/tab_learn.dart';
import 'package:flutter_tricks/202/theme/light_theme.dart';
import 'package:flutter_tricks/202/theme_learn_view.dart';
import 'package:flutter_tricks/demos/my_collection_demos.dart';
import 'package:flutter_tricks/models/Kisiler.dart';
import 'package:flutter_tricks/utils/theme/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      // theme: ThemeData.light().copyWith(
      //   tabBarTheme: const TabBarTheme(
      //     labelColor: Colors.white,
      //     unselectedLabelColor: Colors.green,
      //     indicatorColor: Colors.amber,
      //   ),
      // ),
      home: SharedLearnCache(),
    );
  }
}
