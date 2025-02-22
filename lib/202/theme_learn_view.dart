import 'package:flutter/material.dart';
import 'package:flutter_tricks/demos/password_textfield.dart';

class ThemeLearnView extends StatefulWidget {
  const ThemeLearnView({Key? key}) : super(key: key);

  @override
  _ThemeLearnViewState createState() => _ThemeLearnViewState();
}

class _ThemeLearnViewState extends State<ThemeLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          PasswordTextfield(),
          CheckboxListTile(
            value: true,
            onChanged: (val) {},
            title: Text('select'),
          ),
        ],
      ),
    );
  }
}
