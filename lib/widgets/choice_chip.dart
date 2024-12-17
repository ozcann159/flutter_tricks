import 'package:flutter/material.dart';

class MyChoceChippApp extends StatefulWidget {
  const MyChoceChippApp({super.key});

  @override
  State<MyChoceChippApp> createState() => _MyChoceChippAppState();
}

class _MyChoceChippAppState extends State<MyChoceChippApp> {
  int? _selectedIndex;

  final List<String> _options = [
    "Sports",
    "Music",
    "Tecnology",
    "Food",
    "Movies",
    "Protograpy",
    "Coding",
    "Gaming",
    "Cooking"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ChoiceChip',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select Your Intrests',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
              spacing: 10.0,
              runSpacing: 10.0,
              children: List<Widget>.generate(
                _options.length,
                (int index) {
                  return ChoiceChip(
                    avatar: _selectedIndex == index
                        ? const Icon(
                            Icons.check,
                            color: Colors.white,
                          )
                        : null,
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      child: Text(
                        _options[index],
                        style: TextStyle(
                          fontSize: 18,
                          color: _selectedIndex == index
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                    selected: _selectedIndex == index,
                    selectedColor: Colors.green[400],
                    backgroundColor: Colors.grey[300],
                    elevation: 4,
                    pressElevation: 8,
                    shadowColor: Colors.black54,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(
                          color: _selectedIndex == index
                              ? Colors.green[800]!
                              : Colors.transparent,
                          width: 2.0),
                    ),
                    onSelected: (bool selected) {
                      setState(() {
                        _selectedIndex = selected ? index : null;
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
