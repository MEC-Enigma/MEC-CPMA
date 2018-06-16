import 'package:flutter/material.dart';

class About extends StatefulWidget {
  About({Key key}) : super(key: key);

  static const String routeName = "/About";
  @override
  _AboutState createState() => new _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    var text = new Text(
      "About us",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[text],
    );

    return new Center(child: column);
  }
}
