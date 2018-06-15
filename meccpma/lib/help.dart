import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  Help({Key key}) : super(key: key);

  static const String routeName = "/Help";
  @override
  _HelpState createState() => new _HelpState();

}

class _HelpState extends State<Help> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),);
  }

  Widget _buildBody() {
    var text = new Text("Help",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        text
      ],
    );

    return new Center(child: column);

  }
}