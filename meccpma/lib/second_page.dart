import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  static const String routeName = "/Secondpage";

  @override
  _SecondPageState createState() => new _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    var titleLogo = new Image(
      image: new AssetImage('assets/mec_side.jpg'),
      width: 800.0,
    );
    var layout = new Column(
      children: <Widget>[
        titleLogo,
      ],
    );

    Widget logoSection = new Container(
        padding: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(color: Color(0xfff8f8f8)),
        child: layout);


    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: [
            logoSection,
          ],
        ),
      ),
    );
  }
}
