import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Button'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.all(30)),
                overlayColor: MaterialStateProperty.all(
                    Colors.black), //for hover effect or splch
                elevation: MaterialStateProperty.all(20),
                backgroundColor: MaterialStateProperty.all(Colors.purple)),
            child: Text(
              'Press me',
              style: TextStyle(fontSize: 50),
            ),
            onPressed: () {},
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            width: 200,
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              onPressed: () {
                print('LIKE');
              },
              child: Text(
                'press me',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
