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

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          topImage(),
          motto(),
          firstRow(),
          secondRow(),
        ],
      )
    );
  }

  Widget motto() {
    var leader = new Text("LEADER",
      style: new TextStyle(
          fontSize: 50.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var entrepreneur = new Text("ENTREPRENEUR",
      style: new TextStyle(
          fontSize: 50.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );
    var innovator = new Text("INNOVATOR",
      style: new TextStyle(
          fontSize: 50.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Roboto'),
      textAlign: TextAlign.left,
    );

    var column = new Container(
      alignment: Alignment.topLeft,
      padding: new EdgeInsets.fromLTRB(34.0, 40.0, 34.0, 150.0) ,
       child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          leader,
          entrepreneur,
          innovator,
        ],
     )
    );
    return column;
  }

  Widget topImage() {
    var mecLogo = new Image(image: new AssetImage('assets/mec_side.jpg'), width: 200.0);
    var column = new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.only(top: 10.0) ,
       child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          mecLogo
        ],
     )
    );
    return column;
  }

  Widget firstRow() {

    var login = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Login()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.people),
          ),
    );

    var about = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new About()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.home),
          ),
    );

    var blog = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Blog()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.chat),
          ),
    );

    var row = new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.fromLTRB(36.0, 20.0, 36.0, 100.0) ,
       child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          login,
          about,
          blog
        ],
     )
    );
    return row;
  }

  Widget secondRow() {

    var gallery = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Gallery()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.image),
          ),
    );

    var help = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Help()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.help),
          ),
    );

    var social = new FloatingActionButton(
      onPressed: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Social()));},
      heroTag: null,
      child: new ConstrainedBox(
            constraints: new BoxConstraints.expand(),
            child: new Icon(Icons.people),
          ),
    );

    var row = new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.fromLTRB(36.0, 20.0, 36.0, 200.0) ,
       child: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          gallery,
          help,
          social
        ],
     )
    );
    return row;
  }
}