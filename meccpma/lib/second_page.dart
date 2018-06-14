import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => new _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    var titleLogo = new Image(
      image: new AssetImage('assets/mec_side.jpg'));
    var layout = new Column(
      children: <Widget>[
        titleLogo,
      ],
    );
    return Container(decoration: new BoxDecoration(color: Color(0xfff8f8f8)), child: layout);
  }

}