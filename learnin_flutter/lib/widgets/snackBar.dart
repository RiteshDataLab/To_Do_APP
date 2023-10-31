import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('SnackBar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              final snackbar = SnackBar(
                content: Text("This is a snackbar"),
              );
              ScaffoldMessenger.of(context)
                  .showSnackBar(snackbar); // Show the snackbar
                  
            },
            child: Text('SNACK bar Clicked'),
          ),
        ),
      ),
    );
  }
}
