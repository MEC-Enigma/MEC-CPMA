import 'package:flutter/material.dart';
import 'student_home.dart';


class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  static const String routeName = "/Login";


  @override
  _LoginState createState() => new _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                options(),
                login()                ]
            )
         ));
  }

  Widget options() {
    var header = new Text(
      "Login",
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
              children: <Widget>[back, header, share],
            )));
    return column;
  }

  Widget login() {
    var outlookLogo =
        new Image(image: new AssetImage('assets/outlook.png'), width: 100.0);

    final emailController = new TextEditingController();
    final passwordController = new TextEditingController();

    var username = new TextField(
      controller: emailController,
      textAlign: TextAlign.start,

      decoration: new InputDecoration(
        border: InputBorder.none,
        labelText: 'Username',
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

    var _username;
    var _password;

    var signinButton = new FlatButton(
        onPressed: () {
          {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new StudentHome()));
          }
        },
        child: new Text('Sign in'));

    var column = new Container(
        padding: new EdgeInsets.only(top: 50.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            outlookLogo,
            Container(
              padding: EdgeInsets.only(top: 10.0),
              width: 250.0,
              child: username,
            ),
            Container(
              padding: EdgeInsets.only(top: 5.0),
              width: 250.0,
              child: password,
            ),
            signinButton

            //button,
            //forgot
          ],
        ));




    return column;
  }
}
