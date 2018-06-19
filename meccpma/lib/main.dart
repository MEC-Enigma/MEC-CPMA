import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mec_page.dart';
import 'gallery.dart';
import 'second_page.dart';
import 'about.dart';
import 'blog.dart';
import 'help.dart';
import 'login.dart';
import 'social.dart';
import 'student_home.dart';
import 'home_page.dart';

void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        '/second': (context) => new SecondPage(),
        '/gallery': (context) => new Gallery(),
        '/homepage': (context) => new HomePage(),
        '/help': (context) => new Help(),
        '/about': (context) => new About(),
        '/blog': (context) => new Blog(),
        '/login': (context) => new Login(),
        '/mecpage': (context) => new MECPage(),
        '/studenthome': (context) => new StudentHome(),
        '/social': (context) => new Social()
      },
      home: new MECPage(),
    );
  }
}
