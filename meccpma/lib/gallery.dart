import 'package:flutter/material.dart';

class Gallery extends StatefulWidget {
  Gallery({Key key}) : super(key: key);

  static const String routeName = "/Gallery";

  @override
  _GalleryState createState() => new _GalleryState();
}

class _GalleryState extends State<Gallery> with SingleTickerProviderStateMixin {

  var header = new Text(
    "Gallery",
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

      body: cardsGrid()
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
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
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
