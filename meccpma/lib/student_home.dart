import 'package:flutter/material.dart';

class StudentHome extends StatefulWidget {
  StudentHome({Key key}) : super(key: key);

  static const String routeName = "/StudentHome";

  @override
  _StudentHomeState createState() => new _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    Column buildIconColumn(IconData icon, String label) {
      Color color = Colors.black;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            icon,
            color: color,
            size: 40.0,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Row makeRow(List icons, List text) {
      return new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          buildIconColumn(icons[0], text[0]),
          buildIconColumn(icons[1], text[1]),
          buildIconColumn(icons[2], text[2]),
        ],
      );
    }

    var rowIcons1 = [Icons.call, Icons.near_me, Icons.share];
    var rowText1 = ['Call', 'Route', 'Share'];

    var buttonSection = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: makeRow(rowIcons1, rowText1),
          padding: EdgeInsets.only(top: 50.0),
        ),
        Container(
          child: makeRow(rowIcons1, rowText1),
          padding: EdgeInsets.only(top: 30.0),
        ),
        Container(
          child: makeRow(rowIcons1, rowText1),
          padding: EdgeInsets.only(top: 30.0),
        )
      ],
    );

    var mecTag = new Text(
      'Leader\nInnovator\nEntrepreneur',
      style: TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var titleLogo = new Image(image: new AssetImage('assets/mec_side.jpg'));

    return new MaterialApp(
      home: new Scaffold(
          backgroundColor: Color(0xfff8f8f8),
          body: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                //color: Colors.blue,
                alignment: AlignmentDirectional.topCenter,
                padding: EdgeInsets.only(bottom: 30.0),
                child: titleLogo,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  //color: Colors.green,
                  padding: EdgeInsets.all(20.0),
                  child: mecTag),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                //color: Colors.red,
                child: buttonSection,
              )
            ],
          )),
    );
  }
}
