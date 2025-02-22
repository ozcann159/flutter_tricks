import 'package:flutter/material.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({Key? key}) : super(key: key);

  @override
  _PackageLearnViewState createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: Column(
        children: [
          Text(
            'a',
            style: Theme.of(context).textTheme.titleMedium,
          )
        ],
      ),
    );
  }
}
