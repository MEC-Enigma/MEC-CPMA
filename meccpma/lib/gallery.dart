import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  Gallery({Key key}) : super(key: key);

  static const String routeName = "/Gallery";

  @override
  _GalleryState createState() => new _GalleryState();
}

class _GalleryState extends State<Gallery> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Column(

          children: <Widget>[
            new Expanded(
                flex: 1,
                child: new Container(
                  color: Color(0xffffffff),
                  child: options(),
                )
            ),
            new Expanded(
                flex: 9,
                child: new Container(
                  color: Color(0xffffffff),
                  child: cardsGrid(),
                )
            )
          ],

        ),
    );
  }

  Widget options() {
    var header = new Text(
      "Gallery",
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
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
            ),
          ],
        ),
        child: new Container(
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(top: 25.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[back, header, share],
            )));
    return column;
  }

  GridView cardsGrid() {
    var grid = GridView.count(

        shrinkWrap: false,
        padding: EdgeInsets.symmetric(vertical: 1.0),
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),
          Image(image: AssetImage('assets/pupp.jpg')),

          ]);

    return grid;
  }
}
