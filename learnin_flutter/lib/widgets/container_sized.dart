import 'package:flutter/material.dart';

class Container_Sized extends StatelessWidget {
  const Container_Sized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Container and SizedBox"),
          backgroundColor: Colors.deepPurple),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          // Set the background color
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.yellow,
              shape: BoxShape.rectangle,
              // borderRadius: BorderRadius.circular(20)),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              boxShadow: [
                BoxShadow(
                  blurRadius: 30,
                  spreadRadius: 30,
                  color: Colors.green,
                )
              ]),
          //alignment: Alignment.center, // Align the child (Text) to the center
          child: Center(
              child:
                  //Text("Logo", style: TextStyle(fontSize: 20)))),
                  Container(color: Colors.red)),
        ),
      ),

      // Center(
      //  child: SizedBox(
      //height: 50,
      //width: 50,
      //child: Text("Hello"),
    );
  }
}
