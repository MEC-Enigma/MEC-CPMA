import 'package:flutter/material.dart';

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
        body: TheGridView().build()
      ),
    );
  }
}

class TheGridView {
  Card makeGridCell(String name, IconData icon, Color cardcolor) {
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
    return Card(
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
  }

  GridView build() {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        children: <Widget>[
          makeGridCell("About us", Icons.ac_unit, Colors.green),
          makeGridCell("Gallery", Icons.image, Colors.blue),
          makeGridCell("Blog", Icons.chat_bubble, Colors.red),
          makeGridCell("Social media", Icons.chat, Colors.blueGrey),
          makeGridCell("Login", Icons.people, Colors.amber),
          makeGridCell("Help", Icons.help, Colors.orange),

        ]);
  }
}