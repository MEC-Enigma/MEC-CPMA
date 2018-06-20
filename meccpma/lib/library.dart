import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Library extends StatefulWidget {
  Library({Key key}) : super(key: key);

  @override
  _LibraryState createState() => new _LibraryState();
}

Future<Post> fetchPost() async {
  final response = await http.post(
    'http://10.59.121.130/cgi-bin/koha/opac-user.pl',
    body: {'userid': '15XJ1A0530', 'password': 'meclib'},
  );

  return Post(response.body);
}

class Post {
  final String body;

  Post(this.body);
}

class LibRecord {
  final String title;
  final String author;
  final String dueDate;
  final String fine;
  final String barCode;
  final String checkOut;
  final String overDue;

  LibRecord(this.title, this.author, this.dueDate, this.fine, this.barCode,
      this.checkOut, this.overDue);
}

Container makeCard(LibRecord record) {
  return Container(
      padding: EdgeInsets.only(top: 50.0),
      child: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 20.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    'Checked out: ',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(
                      record.checkOut,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Overdue: ',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(
                      record.overDue,
                      style: TextStyle(fontSize: 17.0),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Fine: ',
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(
                      record.fine,
                      style: TextStyle(color: Colors.red, fontSize: 17.0),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Container(
          //color: Colors.white,
          padding: EdgeInsets.all(20.0),
          decoration: new BoxDecoration(
            color: Colors.white,
            boxShadow: [
              new BoxShadow(
                color: Colors.grey,
                blurRadius: 10.0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  record.title,
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Author: ',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(record.author),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Due: ',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(
                      record.dueDate,
                      style: TextStyle(color: Colors.red),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Bar code: ',
                    style:
                        TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 3.0),
                    child: Text(record.barCode),
                  )
                ],
              ),
            ],
          ),
        )
      ]));
}

LibRecord parseHtml(String body) {
  String regexCheckout = r'Checked out \((\d+)\)';
  String regexOverdue = r'Overdue \((\d+)\)';
  String regexFines = r'Fines \((\d+.\d+)\)';
  String regexTitle =
      r'<a class="title" href="/cgi-bin/koha/opac-detail.pl\?biblionumber=(\d+)">(.*?)</a>';
  String regexAuthor = r'<span class="item-details">(.*?)</span>';
  String regexDuedate =
      r'<span class="tdlabel">Date due:</span>\s*(.*?)\s*</span>';
  String regexBarcode =
      r'<span class="tdlabel">Barcode:</span>\s*(.*?)\s*</td>';

  RegExp checkOut = new RegExp(regexCheckout);
  var matches6 = checkOut.firstMatch(body);

  RegExp overDue = new RegExp(regexOverdue);
  var matches7 = overDue.firstMatch(body);

  RegExp fines = new RegExp(regexFines);
  var matches4 = fines.firstMatch(body);

  RegExp title = new RegExp(regexTitle);
  var matches1 = title.firstMatch(body);

  RegExp author = new RegExp(regexAuthor);
  var matches2 = author.firstMatch(body);

  RegExp dueDate = new RegExp(regexDuedate);
  var matches3 = dueDate.firstMatch(body);

  RegExp barCode = new RegExp(regexBarcode);
  var matches5 = barCode.firstMatch(body);

  //return "${matches7.group(1)}";

  return LibRecord(
      "${matches1.group(2)}",
      "${matches2.group(1)}",
      "${matches3.group(1)}",
      "${matches4.group(1)}",
      "${matches5.group(1)}",
      "${matches6.group(1)}",
      "${matches7.group(1)}");
}

class _LibraryState extends State<Library> with SingleTickerProviderStateMixin {
  var header = new Text(
    "Library",
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
    var profile = FutureBuilder<Post>(
      future: fetchPost(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return makeCard(parseHtml(snapshot.data.body));
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }

        // By default, show a loading spinner
        return CircularProgressIndicator();
      },
    );

    return new Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: header,
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.black,
              ),
              onPressed: null)
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Center(
                  child: Image(
                    image: AssetImage('assets/library.png'),
                    width: 300.0,
                  ),
                ),
                Container(
                  child: Center(child: profile),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
