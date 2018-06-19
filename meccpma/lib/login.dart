import 'package:flutter/material.dart';
import 'student_home.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  static const String routeName = "/Login";

  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {

  var header = new Text(
    "Login",
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
          brightness: Brightness.light,
          iconTheme: IconThemeData(color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: header,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: null)
          ],
        ),

        body: ListView(
          padding: EdgeInsets.only(top: 100.0),
          children: <Widget>[login()],
        ));
  }

  Widget login() {
    var outlookLogo =
        new Image(image: new AssetImage('assets/outlook.png'), width: 75.0);

    final emailController = new TextEditingController();
    final passwordController = new TextEditingController();

    var email = new TextField(
      controller: emailController,
      textAlign: TextAlign.start,
      decoration: new InputDecoration(
        border: InputBorder.none,
        labelText: 'Email',
      ),
    );

    var password = new TextField(
      controller: passwordController,
      textAlign: TextAlign.start,
      obscureText: true,
      decoration: new InputDecoration(
        border: InputBorder.none,
        labelText: 'Password',
      ),
    );

    var _email;
    var _password;

    var signinButton = new FlatButton(
        color: Color(0xff0072c6),
        onPressed: () {
          {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new StudentHome()));
          }
        },
        child: new Text(
          'Log in',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ));

    var column = new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
                child: outlookLogo
            ),
             Container(
                width: 275.0,
                child: email,
              ),

            Container(
              width: 275.0,
              child: password,
            ),
            Container(
              //padding: EdgeInsets.only(top: 15.0),
              width: 275.0,
              child: signinButton,
            )
            //button,
            //forgot
          ],
        ));
    return column;
  }
}
