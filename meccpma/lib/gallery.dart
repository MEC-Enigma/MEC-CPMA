import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  Gallery({Key key}) : super(key: key);

  static const String routeName = "/Gallery";
  @override
  _GalleryState createState() => new _GalleryState();
}

class _GalleryState extends State<Gallery> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    var text = new Text(
      "Gallery",
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
