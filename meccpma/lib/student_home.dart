import 'package:flutter/material.dart';
import 'second_page.dart';

class StudentHome extends StatefulWidget {
  StudentHome({Key key}) : super(key: key);

  @override
  _StudentHomeState createState() => new _StudentHomeState();
}

class _StudentHomeState extends State<StudentHome> {
  @override
  Widget build(BuildContext context) {
    Column buildIconColumn(IconData icon, String label) {
      Color color = Colors.black;

      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          new Icon(
            icon,
            color: color,
            size: 40.0,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w500,
                color: color,
              ),
            ),
          )
        ],
      );
    }

    Row makeRow(List rowItems) {
      List buttonsList = new List<Widget>();

      for (var ri in rowItems) {
        var button = new GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, ri[2]);
          },
          child: buildIconColumn(ri[0], ri[1]),
        );
        buttonsList.add(button);
      }

      return new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: buttonsList,
      );
    }

    List row1 = [
      [Icons.email, 'Inbox', '/inbox'],
      [Icons.supervised_user_circle, 'Clubs', '/clubs'],
      [Icons.people, 'Social', '/social']
    ];

    List row2 = [
      [Icons.event, 'Events', '/events'],
      [Icons.assignment_turned_in, 'Results', '/results'],
      [Icons.local_library, 'Library', '/library']
    ];

    List row3 = [
      [Icons.book, 'Moodle', '/Moodle'],
      [Icons.date_range, 'T.table', '/timetable'],
      [Icons.fastfood, 'Food', '/food'],
    ];

    List row4 = [
      [Icons.image, 'Gallery', '/gallery'],
      [Icons.warning, 'Feedback', '/feedback'],
      [Icons.help, 'Help', '/help']
    ];

    var buttonSection = new Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: makeRow(row1),
          padding: EdgeInsets.only(top: 50.0),
        ),
        Container(
          child: makeRow(row2),
          padding: EdgeInsets.only(top: 30.0),
        ),
        Container(
          child: makeRow(row3),
          padding: EdgeInsets.only(top: 30.0),
        ),
        Container(
          child: makeRow(row4),
          padding: EdgeInsets.only(top: 30.0),
        )
      ],
    );

    var mecTag = new Text(
      'Leader\nInnovator\nEntrepreneur',
      style: TextStyle(
          fontSize: 25.0,
          fontStyle: FontStyle.normal,
          fontFamily: 'Times New Roman'),
    );

    var titleLogo = new Image(image: new AssetImage('assets/mec_side.jpg'));

    return new MaterialApp(
      home: new Scaffold(
          backgroundColor: Color(0xfff8f8f8),
          body: new ListView(
            shrinkWrap: true,
            children: <Widget>[
              Container(
                //color: Colors.blue,
                alignment: AlignmentDirectional.topCenter,
                padding: EdgeInsets.only(bottom: 30.0),
                child: titleLogo,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  //color: Colors.green,
                  padding: EdgeInsets.all(20.0),
                  child: mecTag),
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                //color: Colors.red,
                child: buttonSection,
              )
            ],
          )),
    );
  }
}
