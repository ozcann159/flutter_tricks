import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'AppBar',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),
        ),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Center(
        child: Container(
          height: 350,
          width: 300,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.purpleAccent, Colors.orangeAccent],
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Center(
            child: Text(
              'Hello, Code Tricks!',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
