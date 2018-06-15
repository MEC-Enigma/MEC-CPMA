import 'package:flutter/material.dart';
import 'mec_page.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MECPage(),
    );
  }
}