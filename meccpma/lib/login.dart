import 'package:flutter/material.dart';
import 'student_home.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  static const String routeName = "/Login";
  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: new Text('Login'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    var outlookLogo =
        new Image(image: new AssetImage('assets/outlook.png'), width: 100.0);
    var text = new Text(
      "Login page",
      style: new TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var navButton = new IconButton(
        icon: new Icon(Icons.arrow_forward),
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => new StudentHome()));
        });

    var column = new Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[outlookLogo, text, navButton],
    );

    return new Center(child: column);
  }
}
