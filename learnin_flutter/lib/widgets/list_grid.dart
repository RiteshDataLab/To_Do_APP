import 'package:flutter/material.dart';

class ListGrid extends StatelessWidget {
  const ListGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        title: Center(child: Text('List and Grid')),
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 boxes in each row
        ),
        // itemCount: 6, // Total number of boxes you want
        itemBuilder: (BuildContext context, int index) {
          // Your item widget here
          return Card(
            child: ListTile(
              title: Text('Orange'),
              subtitle: Text('Karan'),
            ),
          );
        },
      ),
    );
  }
}
