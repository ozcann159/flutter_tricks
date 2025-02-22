import 'package:flutter/material.dart';

class PasswordTextfield extends StatefulWidget {
  PasswordTextfield({
    Key? key,
   this.controller,
  }) : super(key: key);
  final TextEditingController? controller;

  @override
  State<PasswordTextfield> createState() => _PasswordTextfieldState();
}

class _PasswordTextfieldState extends State<PasswordTextfield> {
  final _obsureText = '*';

  bool _isSecure = true;

  void _changeLoading() {
    setState(() {
      _isSecure = !_isSecure;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      autofillHints: [AutofillHints.password],
      obscureText: _isSecure,
      obscuringCharacter: _obsureText,
      decoration: InputDecoration(
        border: UnderlineInputBorder(),
        hintText: 'Password',
        suffix: IconButton(
          onPressed: () {
            _changeLoading();
          },
          icon: Icon(_isSecure ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
