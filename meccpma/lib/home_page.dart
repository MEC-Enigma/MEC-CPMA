import 'package:flutter/material.dart';
import 'second_page.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),);
  }

  Widget _buildBody() {
    var mecLogo = new Image(image: new AssetImage('assets/mec.png'), width: 200.0);
    var mahindraText = new Text("Mahindra",
    style: new TextStyle(
      fontSize: 25.0,
      fontStyle: FontStyle.normal,
      fontFamily: 'Times New Roman'),
    );
    var ecoleText = new Text("\u00C9cole Centrale",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var navButton = new IconButton(icon: new Icon(Icons.arrow_forward), onPressed: _toSecondPage);
    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        mecLogo,
        mahindraText,
        ecoleText,
        navButton
      ],
    );

    return new Center(child: column);

  }
  Future _toSecondPage() async {
    Navigator.of(context).push(new MaterialPageRoute<dynamic>(
      builder: (BuildContext context) {
      return new SecondPage();
    },
    ));
  }

}