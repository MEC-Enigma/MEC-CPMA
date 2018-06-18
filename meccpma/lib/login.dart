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
        resizeToAvoidBottomPadding: true,
        body: new Container(
            alignment: Alignment.center,
            child: new ListView(
              children: [
                options(),
                login() ]
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
        child: new Container(
            alignment: Alignment.topCenter,
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
        color: Colors.blue,
        onPressed: () {
          {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new StudentHome()));
          }
        },
        child: new Text('Sign in',
        style: TextStyle(color: Colors.white,
                        fontSize: 15.0),));

    var column = new Container(
        padding: new EdgeInsets.only(top: 50.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: outlookLogo,
            )
            ,
            Container(
              width: 275.0,
              child: email,
            ),
            Container(
              width: 275.0,
              child: password,
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0),
              child: signinButton,
            )
            //button,
            //forgot
          ],
        ));
    return column;
  }
}
