import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class Social extends StatefulWidget {
  Social({Key key}) : super(key: key);

  static const String routeName = "/Social";

  @override
  _SocialState createState() => new _SocialState();
}

class _SocialState extends State<Social> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 18.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                options(),
                social('assets/twitter.png', 'https://twitter.com/StudyatMEC'),
                social('assets/facebook.png', 'http://facebook.com/studyatmec'),
                social('assets/youtube.png', 'https://in.linkedin.com/company/mahindra-%C3%A9cole-centrale'),
              ],
            )));
  }

  Widget options() {
    var header = new Text(
      "Social",
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
      icon: new Icon(Icons.share),
      onPressed: () {},
    );

    var column = new Container(
        alignment: Alignment.topCenter,
        padding: new EdgeInsets.only(top: 0.0),
        height: 80.0,
        decoration: new BoxDecoration(
          color: Colors.white,
          boxShadow: [
            new BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
            ),
          ],
        ),
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