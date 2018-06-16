import 'package:flutter/material.dart';
import 'home_page.dart';

class MECPage extends StatefulWidget {
  MECPage({Key key}) : super(key: key);

  @override
  _MECPageState createState() => new _MECPageState();

}

class _MECPageState extends State<MECPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _buildBody(),);
  }

  Widget _buildBody() {
    var mecLogo = new Image(image: new AssetImage('assets/mec.png'), width: 150.0);
    var mahindraText = new Text("Mahindra",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );
    var ecoleText = new Text("\u00C9cole Centrale",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var navButton = new IconButton(
        icon: new Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(
            context,
            new MaterialPageRoute(builder: (context) => new HomePage())
          );
        });

    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        mecLogo,
        mahindraText,
        ecoleText,
        navButton
      ],
    );

    return new Center(child: column);

  }
}