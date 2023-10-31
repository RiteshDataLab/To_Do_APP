import 'package:flutter/material.dart';
import 'package:learnin_flutter/widgets/button.dart';
import 'package:learnin_flutter/widgets/container_sized.dart';
import 'package:learnin_flutter/widgets/rows_col.dart';
import 'package:learnin_flutter/widgets/list_grid.dart';
import 'package:learnin_flutter/widgets/snackBar.dart';
import 'package:learnin_flutter/widgets/disimble_widget.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: DismissibleWidgets(),
    );
  }
}
