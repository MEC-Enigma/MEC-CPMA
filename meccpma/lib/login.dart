import 'package:flutter/material.dart';
import 'student_home.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  static const String routeName = "/Login";
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login>  with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        alignment: Alignment.center,
        padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
        child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
          children: [
            options(),
            login()
          ],
        )
      )
    );
  }

  Widget options() {

    var header = new Text("Login",
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
      icon: new Icon(Icons.account_circle),
      onPressed: () {},
    );

    var column = new Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(top: 0.0),
      height: 80.0,
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

  Widget login() {
    var outlookLogo = new Image(image: new AssetImage('assets/outlook.png'), width: 300.0);

    var username = new TextField(
       textAlign: TextAlign.center,
      decoration: new InputDecoration(
        border: InputBorder.none,
        hintText: 'Username',
      ),
    );

    var password = new TextField(
        textAlign: TextAlign.center,
      decoration: new InputDecoration(
        border: InputBorder.none,
        hintText: 'Password',
      ),
    );

    var column = new Container(
      padding: new EdgeInsets.only(top: 100.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          outlookLogo,
          username,
          password,
          //button,
          //forgot
        ],
      )
    );

    return column;
  }
}
