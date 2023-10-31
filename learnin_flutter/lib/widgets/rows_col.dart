import 'package:flutter/material.dart';

class RowsCols extends StatelessWidget {
  const RowsCols({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Coloums and Rows'),
      ),
      body: Container(
        height: 200,
        width: w,
        color: Colors.yellow,
        child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 60,
                color: Colors.blue,
              ),
              Container(
                height: 60,
                width: 60,
                color: Color.fromARGB(255, 44, 52, 58),
              ),
              Container(
                height: 60,
                width: 60,
                color: Color.fromARGB(255, 20, 58, 89),
              ),
              Container(
                height: 60,
                width: 60,
                color: Color.fromARGB(255, 80, 83, 86),
              ),
              Container(
                height: 60,
                width: 60,
                color: Colors.black,
              ),
            ]),

        // child: Wrap(
        //   // direction: Axis.vertical,
        //   // alignment: WrapAlignment.end,

        //   //mainAxisAlignment: MainAxisAlignment.end,
        //   //crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     Text(
        //         'ndfjvnejnoe ehgioer  hgrle g hgrine oigc hnfng jgig ieg ghirgwig ro'),
        //     //   Container(
        //     //     height: 60,
        //     //     width: 60,
        //     //     color: Colors.blue,
        //     //   ),
        //     //   Container(
        //     //     height: 60,
        //     //     width: 60,
        //     //     color: Color.fromARGB(255, 20, 58, 89),
        //     //   ),
        //     //   Container(
        //     //     height: 60,
        //     //     width: 60,
        //     //     color: Color.fromARGB(255, 80, 83, 86),
        //     //   ),
        //     //   Container(
        //     //     height: 60,
        //     //     width: 60,
        //     //     color: Colors.black,
        //     //   ),
        //     //   Container(
        //     //     height: 60,
        //     //     width: 60,
        //     //     color: Colors.green,
        //     //   ),
        //   ],
        // ),
      ),
    );
  }
}
