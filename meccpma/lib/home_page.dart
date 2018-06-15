import 'package:flutter/material.dart';
import 'login.dart';
import 'about.dart';
import 'gallery.dart';
import 'blog.dart';
import 'social.dart';
import 'help.dart';

import 'second_page.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  HomePageState createState() => new HomePageState();
}

class HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  var titleLogo = new Image(
    image: new AssetImage('assets/mec_side.jpg'),
    width: 200.0,);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfff8f8f8),
            title: Center(child: titleLogo),
          ),
          body: TheGridView().build(context)
      ),
    );
  }
}

class TheGridView {
  GestureDetector makeGridCell(String name, IconData icon, Color cardcolor, String page, BuildContext context) {
    var modifyIcon = new Icon(icon,
      size: 75.0,
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

    if(page == 'Login') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Login()));},
        child: optionCard,
      );
    }
    else if(page == 'About') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new About()));},
        child: optionCard,
      );
    }
    else if(page == 'Gallery') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Gallery()));},
        child: optionCard,
      );
    }
    else if(page == 'Blog') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Blog()));},
        child: optionCard,
      );
    }
    else if(page == 'Social') {
      redirect = GestureDetector(
        onTap: () {Navigator.push(context,new MaterialPageRoute(builder: (context) => new Social()));},
        child: optionCard,
      );
    }
    else if(page == 'Help') {
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
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        children: <Widget>[
          makeGridCell("About us", Icons.ac_unit, Colors.green, 'About', context),
          makeGridCell("Gallery", Icons.image, Colors.blue, 'Gallery', context),
          makeGridCell("Blog", Icons.chat_bubble, Colors.red, 'Blog', context),
          makeGridCell("Social media", Icons.chat, Colors.blueGrey, 'Social', context),
          makeGridCell("Login", Icons.people, Colors.amber, 'Login', context),
          makeGridCell("Help", Icons.help, Colors.orange, 'Help', context),

        ]);
  }

}