import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Drawer',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.green[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.green[300]),
              child: const Text(
                "Drawer Header",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text("Contact Us"),
            ),
            const Divider(
              color: Colors.red,
            ),
            const ListTile(
              leading: Icon(Icons.logout),
              title: Text("Log Out"),
            ),
            const Divider(
              color: Colors.red,
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Code Flicks',
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.purple[200],
          ),
        ),
      ),
    );
  }
}
