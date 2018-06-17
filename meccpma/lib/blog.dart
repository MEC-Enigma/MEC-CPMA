import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  Blog({Key key}) : super(key: key);

  static const String routeName = "/Blog";
  @override
  _BlogState createState() => new _BlogState();

}

class _BlogState extends State<Blog>  with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            options(),
          ],
        )
      )
    );
  }

  Widget options() {

    var header = new Text("Blog",
      style: new TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal,
          fontFamily: 'Roboto Bold',
          color: Colors.red,
          ),
    );

    var back = new BackButton(
      color: Colors.black,
    );

    var share = new IconButton(
      icon: new Icon(Icons.share),
      onPressed: () {},
    );

    var column = new Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(top: 0.0),
      height: 80.0,
      decoration: new BoxDecoration(
          color: Colors.white,
          boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),],
      ),
      child: new Container(
        alignment: Alignment.topCenter,
        padding: new EdgeInsets.only(top: 25.0),
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              back,
              header,
              share
            ],
          )
      )
    );
    return column;
  }
}