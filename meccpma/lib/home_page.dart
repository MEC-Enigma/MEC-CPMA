import 'package:flutter/material.dart';
import 'login.dart';
import 'about.dart';
import 'gallery.dart';
import 'blog.dart';
import 'social.dart';
import 'help.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.only(left: 8.0, top: 10.0, right: 8.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                topImage(),
                motto(),
                firstRow(),
                secondRow(),
              ],
            )));
  }

  Widget motto() {
    var leader = new Text(
      "LEADER",
      style: new TextStyle(
          fontSize: 50.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var entrepreneur = new Text(
      "ENTREPRENEUR",
      style: new TextStyle(
          fontSize: 50.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var innovator = new Text(
      "INNOVATOR",
      style: new TextStyle(
          fontSize: 50.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );

    var column = new Container(
        alignment: Alignment.topLeft,
        padding: new EdgeInsets.only(left: 34.0, top: 50.0, right: 34.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            leader,
            entrepreneur,
            innovator,
          ],
        ));
    return column;
  }

  Widget topImage() {
    var mecLogo =
        new Image(image: new AssetImage('assets/mec_side.jpg'), width: 200.0);
    var column = new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.only(top: 10.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[mecLogo],
        ));
    return column;
  }

  Widget firstRow() {
    List firstrowIcons = [
      [Icons.person, '/login'],
      [Icons.home, '/about'],
      [Icons.chat, '/blog']
    ];
    List iconButtons = new List<Widget>();

    for (var i in firstrowIcons) {
      var button = new FlatButton(
        child: new Icon(
          i[0],
          size: 50.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, i[1]);
        },
      );
      iconButtons.add(button);
    }

    var row = new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.only(left: 36.0, top: 50.0, right: 36.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: iconButtons,
        ));
    return row;
  }

  Widget secondRow() {
    List secondrowIcons = [
      [Icons.image, '/gallery'],
      [Icons.help, '/help'],
      [Icons.people, '/social']
    ];
    List iconButtons = new List<Widget>();

    for (var i in secondrowIcons) {
      var button = new FlatButton(
        child: new Icon(
          i[0],
          size: 50.0,
        ),
        onPressed: () {
          Navigator.pushNamed(context, i[1]);
        },
      );
      iconButtons.add(button);
    }

    var row = new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.only(
            left: 36.0, top: 10.0, right: 36.0, bottom: 50.0),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: iconButtons,
        ));
    return row;
  }
}
