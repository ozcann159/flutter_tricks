import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/button_learn.dart';
import 'package:flutter_tricks/101/icon_learn.dart';

class TabLearn extends StatefulWidget {
  const TabLearn({super.key});

  @override
  _TabLearnState createState() => _TabLearnState();
}

class _TabLearnState extends State<TabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        // appBar: AppBar(
        //   bottom: TabBar(
        //     tabs: [Text('Page 1'), Text('Page 2')],
        //   ),
        // ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
              controller: _tabController,
              onTap: (int index) {},
              tabs: _MyTabViews.values
                  .map((e) => Tab(text: '${e.name}'))
                  .toList()),
        ),

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(onPressed: () {
          _tabController.animateTo(0);
        }),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            IconLearn(),
            ButtonLearn(),
            IconLearn(),
            ButtonLearn(),
          ],
        ),
      ),
    );
  }
}

enum _MyTabViews {
  home,
  settings,
  favorite,
  profile,
}

extension _MyTabViewExtension on _MyTabViews {
  //metotların özellikleri yazilir.
  void name() {}
}
