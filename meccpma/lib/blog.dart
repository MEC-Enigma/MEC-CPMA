import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  Blog({Key key}) : super(key: key);

  static const String routeName = "/Blog";
  @override
  _BlogState createState() => new _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    var text = new Text(
      "Blog",
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
