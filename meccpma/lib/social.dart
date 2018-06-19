import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  static const String routeName = "/Social";

  @override
  _SocialState createState() => new _SocialState();
}

class _SocialState extends State<Social> with SingleTickerProviderStateMixin {
  var header = new Text(
    "Social media",
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
          iconTheme: IconThemeData(color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: header,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: null),
          ]
        ),
        body: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                social('assets/twitter.png', 'https://twitter.com/StudyatMEC'),
                social('assets/facebook.png', 'http://facebook.com/studyatmec'),
                social('assets/LinkedIn.png', 'https://in.linkedin.com/company/mahindra-%C3%A9cole-centrale'),
              ],
            )));
  }

  Widget social(path, link) {

    var button = new FlatButton(
                    child: Image(image: new AssetImage(path), width: 50.0,),
                    onPressed: () {_launchURL(context, link);},
    );
    return button;

  }

 void _launchURL(BuildContext context, link) async {
    try {
      await launch(
          link,
          option: new CustomTabsOption(
          toolbarColor: Theme.of(context).primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          animation: new CustomTabsAnimation(
            startEnter: 'slide_up',
            startExit: 'android:anim/fade_out',
            endEnter: 'android:anim/fade_in',
            endExit: 'slide_down',
          ),
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }
}