import  'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'mec_page.dart';
import 'dart:ui';

void main() {
  runApp(new MyApp());
  Color color = Color(0xffba000d);
  changeStatusColor(color);

}

changeStatusColor(Color color) async {
  try {
    await FlutterStatusbarcolor.setStatusBarColor(color);
  } on PlatformException catch (e) {
    print(e);
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new MECPage(),
    );
  }
}