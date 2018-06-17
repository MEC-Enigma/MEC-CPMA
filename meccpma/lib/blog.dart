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
        padding: new EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0),
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            options(),
            cardList()
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

  Widget card(location, mainTitle, subTitle, content) {

    var cardImage = new Image(
      image: new AssetImage(location),
      width: 600.0,
      fit: BoxFit.contain,
    );

    var cardTitle = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: [
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    mainTitle,
                    style: new TextStyle(
                      fontSize: 24.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  subTitle,
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('41'),
        ],
      ),
    );

    var cardDis = new Container(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
      child: new Text(
        content,
        softWrap: true,
        style: new TextStyle(
          fontSize: 14.0,
          fontFamily: 'Roboto',
          color: Colors.grey[800],
        ),
      ),
    );

    var card = new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 15.0),
      child: new Container(
      alignment: Alignment.center,
      padding: new EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0, bottom: 15.0),
      decoration: new BoxDecoration(
          color: Colors.white,
          boxShadow: [new BoxShadow(
            color: Colors.grey,
            blurRadius: 10.0,
          ),],
      ),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            cardImage,
            cardTitle,
            cardDis
          ],
      )
      )
    );
    return card;
  }

  Widget cardList() {

    var cardListView = new Container(
      constraints: new BoxConstraints.expand(
        height: 820.0,
      ),
      alignment: Alignment.topCenter,
      child: ListView(
        padding: new EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 16.0),
        children: <Widget>[
          card('assets/tedx.jpg', 'TedX Mahindra Ecole Centrale', 'March, Convention Center', '''Mahindra École Centrale welcomes you to be a part of the enthralling experience that is TEDxMahindraÉcoleCentrale. We're back with our second edition, and this time.. We’re better. TEDxMahindraÉcoleCentrale seeks to propagate thought-provoking ideas that have taken seed in the minds of reputed figures in fields ranging from Education to Cryptocurrency, and Philosophy to literally, Rocket Science. We cordially invite you to share this experience with us, and take one step closer to Ideas Worth Spreading.'''),
          card('assets/mec1.jpg', 'MEC students with President Macron of France', 'March, New Delhi', '''The President of France Emmanuel Macron, who is currently visiting India, invited and met several young people in Delhi today, including two MEC students. Mr. T. M. Pavan (3rd year ME) and Ms. Gitanjali Raghu (2nd year EEE) had the great opportunity of talking to the French President about MEC and its special curriculum!'''),
          card('assets/mec2.jpg', 'Centrale Connect Conclave', 'March, Convention Center', '''The Centrale Connect Conclave at MEC on 10th March 2018, is an industry-academia event with the theme ”Towards Infinite Possibilities”, and features the following list of eminent guests and panelists.'''),
          card('assets/mec3', 'AIRO – The MEC Sports Fest', 'March, MEC Campus', '''Bonjour! Mahindra École Centrale is hosting a three day sports extravaganza – the perfect platform for sports enthusiasts to showcase their skills and talents. Be there!''')
        ]
      )
    );
    return cardListView;
  }

}
