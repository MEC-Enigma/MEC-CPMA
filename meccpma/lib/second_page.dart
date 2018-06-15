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
        image: new AssetImage('assets/mec_side.jpg'));
    var layout = new Column(
      children: <Widget>[
        titleLogo,
      ],
    );

    Widget logoSection = new Container(
        padding: const EdgeInsets.all(10.0),
        decoration: new BoxDecoration(
            color: Color(0xfff8f8f8)),
        child: layout);

    Column buildIconColumn(IconData icon, String label){
      Color color = Theme.of(context).primaryColor;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          )
        ],
      );
    }

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