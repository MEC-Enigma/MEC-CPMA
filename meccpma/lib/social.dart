import 'package:flutter/material.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  static const String routeName = "/Social";

  @override
  _SocialState createState() => new _SocialState();
}

class _SocialState extends State<Social> with SingleTickerProviderStateMixin {
  var header = new Text(
    "Social media",
    style: new TextStyle(
      fontSize: 30.0,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontFamily: 'Roboto',
      color: Colors.red,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: header,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: null)
          ],
        ),
        body: null);
  }
}
