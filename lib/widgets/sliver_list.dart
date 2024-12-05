import 'package:flutter/material.dart';

class MySliverList extends StatelessWidget {
  MySliverList({super.key});
  final List<String> items = List.generate(20, (index) => "Item #$index");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.indigo.shade200,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Sliver List',
                style: TextStyle(color: Colors.white),
              ),
              background: Image.asset(
                "assets/images/snow.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Sliver List of Items',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors
                        .primaries[index % Colors.primaries.length].shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 4),
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(
                      items[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text(
                      'List Created by code Flick',
                      style: TextStyle(
                        color: Colors.black54,
                      ),
                    ),
                    leading: Icon(
                      Icons.list,
                      color: Colors.indigo,
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.indigo,
                    ),
                    onTap: () {
                      print('Tapped on ${items[index]}');
                    },
                  ),
                );
              },
              childCount: items.length,
            ),
          ),
        ],
      ),
    );
  }
}
