import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  Help({Key key}) : super(key: key);

  static const String routeName = "/Help";

  @override
  _HelpState createState() => new _HelpState();
}

class _HelpState extends State<Help> with SingleTickerProviderStateMixin {
  var header = new Text(
    "Help",
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

          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: header,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: null)
          ],
        ),

        body: Container(
        ));
  }
}
