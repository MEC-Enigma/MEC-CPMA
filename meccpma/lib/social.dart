import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  static const String routeName = "/Social";
  @override
  _SocialState createState() => new _SocialState();
}

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    var text = new Text(
      "Social",
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
