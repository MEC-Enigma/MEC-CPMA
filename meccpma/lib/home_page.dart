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
        body: Container(
          //constraints: BoxConstraints.tightForFinite(width: double.infinity, height: double.infinity),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Color(0xffe09fb0), Color(0xff9fa6e0)],
                    begin: FractionalOffset.topCenter,
                    end: FractionalOffset.bottomCenter
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: <Widget>[
                Container(
                    padding: EdgeInsets.only(top: 10.0),
                    child: topImage()),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 20.0),
                  child: motto(),
                ),
                firstRow(),
                secondRow()
              ],

            )));
  }

  Widget motto() {
    var leader = new Text(
      "LEADER",
      style: new TextStyle(
          fontSize: 30.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var entrepreneur = new Text(
      "INNOVATOR",
      style: new TextStyle(
          fontSize: 30.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var innovator = new Text(
      "ENTREPRENEUR",
      style: new TextStyle(
          fontSize: 30.0, fontStyle: FontStyle.normal, fontFamily: 'Roboto'),
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
    var titleLogo = new Image(image: new AssetImage('assets/mec.png'), width: 50.0,);

    var mecName = new Text('Mahindra\n\u00C9cole Centrale',
      style: TextStyle(
          fontFamily: 'Times New Roman',
          fontSize: 12.5,

      ),);

    var mecLogo = new Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        titleLogo,
        Container(
          padding: EdgeInsets.only(left: 4.0),
          child: mecName,
        )
      ],
    );
    var column = new Container(
        alignment: Alignment.center,
        //padding: new EdgeInsets.only(top: 10.0),
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
