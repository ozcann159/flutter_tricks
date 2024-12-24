import 'package:flutter/material.dart';
import 'package:flutter_tricks/101/icon_learn.dart';
import 'package:flutter_tricks/101/navigate_detail_learn.dart';

class NavigationLearn extends StatefulWidget {
  const NavigationLearn({super.key});

  @override
  State<NavigationLearn> createState() => _NavigationLearnState();
}

class _NavigationLearnState extends State<NavigationLearn>
    with NavigatorManager {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context, index) {
        return const Placeholder(
          color: Colors.red,
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await NavigateToWidgetNormal<bool>(
            context,
            const NavigateDetailLearn(),
          );
          if (response == true) {}
        },
        child: const Icon(Icons.navigation_rounded),
      ),
    );
  }
}

mixin NavigatorManager {
  void NavigateToWidget(BuildContext context, Widget widget) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }

  Future<T?> NavigateToWidgetNormal<T>(BuildContext context, Widget widget) {
    return Navigator.of(context).push<T>(
      MaterialPageRoute(
        builder: (context) {
          return widget;
        },
        fullscreenDialog: true,
        settings: const RouteSettings(),
      ),
    );
  }
}
