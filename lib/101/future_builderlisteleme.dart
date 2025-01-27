import 'package:flutter/material.dart';

class FutureBuilderlisteleme extends StatefulWidget {
  const FutureBuilderlisteleme({super.key});

  @override
  State<FutureBuilderlisteleme> createState() => _FutureBuilderlistelemeState();
}

class _FutureBuilderlistelemeState extends State<FutureBuilderlisteleme> {
  Future<List<String>> veriAl() async {
    var arabaMarkalar = [
      "BMW",
      "Mercedes",
      "Audi",
      "Toyota",
      "Hyundai",
      "Citroen"
    ];
    return arabaMarkalar;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Araba Markaları"),
      ),
      body: FutureBuilder(
        future: veriAl(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var arabaMarkalar = snapshot.data;
            return ListView.builder(
              itemCount: arabaMarkalar!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 50,
                    child: Card(
                      child: Text(arabaMarkalar[index]),
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: Text("Bir hata oluştu"),
            );
          }
        },
      ),
    );
  }
}
