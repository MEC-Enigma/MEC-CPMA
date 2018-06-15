import 'package:flutter/material.dart';
import 'login.dart';
import 'about.dart';
import 'gallery.dart';
import 'blog.dart';
import 'social.dart';
import 'help.dart';

import 'second_page.dart';
import 'package:carousel/carousel.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  var titleLogo = new Image(
    image: new AssetImage('assets/mec.png'),
    width: 50.0,);

  Widget testBGCarousel = new Container(
    padding: EdgeInsets.symmetric(vertical: 10.0),
    child: new Carousel(
      children: [
        new AssetImage('assets/mec1.jpg'),
        new AssetImage('assets/mec2.jpg'),
        new AssetImage('assets/mec3.jpg'),
      ].map((bgImg) => new Image(image: bgImg, width: 400.0, height: 400.0, fit: BoxFit.fill)).toList(),
      displayDuration: const Duration(seconds: 5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          primary: true,

          appBar: AppBar(
            elevation: 4.0,
            backgroundColor: Color(0xfff8f8f8),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(padding: EdgeInsets.only(right: 5.0),child: titleLogo),
                new Text(' Leader - Innovator - Entrepreneur',
                  style: TextStyle(
                    color: Color(0xff6b6767)
                    )
                  ,),
              ],
            ),
          ),
          //body: TheGridView().build(context),
          
          body: new Column(

            children: <Widget>[
              new Expanded(
                flex: 5,
                child: new Container(
                  color: Color(0xfff8f8f8),
                  child: testBGCarousel,
                )
              ),
              new Expanded(
                flex: 5,
                child: new Container(
                  color: Color(0xfff8f8f8),
                  child: TheGridView().build(context),
                  )
                )
              ],

              ),
    )
    );
  }
}

class TheGridView {
  GestureDetector makeGridCell(String name, IconData icon, Color cardcolor, BuildContext context) {
    var modifyIcon = new Icon(icon,
      size: 50.0,
      textDirection: TextDirection.ltr,
      color: Colors.white,);

    var modifyText = new Text(name,
        style: TextStyle(
            fontSize: 15.0,
            fontStyle: FontStyle.normal,
            color: Colors.white)
    );

    var optionCard = new Card(
      elevation: 5.0,
      color: cardcolor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          modifyIcon,
          modifyText,
        ],
      ),
    );

    var redirect;

    if(name == 'Login') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Login()));},
        child: optionCard,
      );
    }
    else if(name == 'About us') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new About()));},
        child: optionCard,
      );
    }
    else if(name == 'Gallery') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Gallery()));},
        child: optionCard,
      );
    }
    else if(name == 'Blog') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Blog()));},
        child: optionCard,
      );
    }
    else if(name == 'Social media') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Social()));},
        child: optionCard,
      );
    }
    else if(name == 'Help') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Help()));},
        child: optionCard,
      );
    }
    else {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new SecondPage()));},
        child: optionCard,
      );
    }
    return redirect;
  }

  GridView build(BuildContext context) {
    var grid = GridView.count(
        primary: true,
        padding: EdgeInsets.symmetric(vertical: 10.0),
        crossAxisCount: 3,
        childAspectRatio: 1.0,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        children: <Widget>[
          makeGridCell("About us", Icons.home, Colors.green, context),
          makeGridCell("Gallery", Icons.image, Colors.pinkAccent, context),
          makeGridCell("Blog", Icons.chat, Colors.red, context),
          makeGridCell("Social media", Icons.ac_unit, Colors.blueGrey, context),
          makeGridCell("Login", Icons.people, Colors.blue, context),
          makeGridCell("Help", Icons.help, Colors.orange, context),

        ]);

     return grid;
  }

}