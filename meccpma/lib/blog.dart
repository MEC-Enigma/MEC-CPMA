import 'package:flutter/material.dart';


class Blog extends StatefulWidget {
  Blog({Key key}) : super(key: key);

  static const String routeName = "/Blog";

  @override
  _BlogState createState() => new _BlogState();
}


class newBlog {
  final String title;
  final String image;
  final String description;

  newBlog(this.image, this.title, this.description);
}

class _BlogState extends State<Blog> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    var header = new Text(
      "Blog",
      style: new TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.normal,
        fontFamily: 'Roboto',
        color: Colors.red,
      ),
    );


    List blogTitles = [
      newBlog('assets/31-March-1.1-min.jpg', '10 Reasons why you should apply early',
          'MEC’s Early Decision/or/and/Action Plan is known to save students a great deal of stress, time and money during the Admission Process. '
              'You are eligible to apply even before your entrance test results. Besides the obvious benefits, the advantages of applying early '
              'are many, and can add a lot of value to your college life and career in the long run. So, here are 10 reasons why applying early '
              'is a wise idea! You will, if you are serious: The way we see it is that by applying early, you are letting us know that you have '
              'thought this through, and are sure of choosing this college. And that’s nice to know. If you are truly serious, it also helps us '
              'pick worthy candidates during the admission process. Secure your admission: You may have a number of colleges in mind to apply at, '
              'which means that the field is yours to play and you have to take your shots. In this case, it is wise to apply early and secure your'
              ' admission. If for some reason, your application is not accepted, you will be saving yourself the troubles of last-minute dejections.'
              'Avoid last-minute stress: Quickly scanning through notes minutes before an exam works sometimes. Last-minute struggle gives anyone a '
              'kick but it is not practical. Especially when applying for college admissions. It is a meticulous process involving tedious paperwork'
              ' and thorough research. Would you really want all the tedious tasks to fall upon you at once, and in the last-minute when the risk is'
              ' as high as costing you an year of education? Your choice of subjects: Yes, they are yours to grab if you act fast. In a competitive '
              'world, it is wiser to act faster. Deserving financial aid: If you are eligible for financial support, your early application could play'
              ' a crucial role in the allotment of a financial aid towards your education. Your choice of college: If you are sure that MEC is the '
              'college that fits you, then there is no reason to wait. Act fast, and secure your admission in a college of your choice now! Take a '
              'vacation: By applying early and accepting your admission much before the deadline, you gift yourself the peace of mind to travel. '
              'With nothing to worry about, you can allow yourself to be swooned by the adventure ahead. So just pack your bags, and head off with '
              'that trekking crew or your school friends for that holiday of a lifetime because you will never be 17 again! Make some extra money: '
              'Why not use the time saved through an early admission in a Summer Internship to gain work experience,and some extra pocket money. '
              'This could keep up your social skills, and if the job is related to the subjects you have chosen to study, the practical experience '
              'adds great value to classroom learning. Pursue your hobbies: The period of 12th Board Exams, Intermediate Exams and College Admissions'
              ' is a time of stress for both you and your family. Luckily, soon after comes the time for fun. Relieving yourself of the worries of '
              'College Admission, gives you the freedom to explore. Pick out your hobbies and make time for them before you get swarmed by college '
              'responsibilities. Stay ahead of your class: If you are a nerd, you have all the time to turn through your upcoming lessons, maybe try '
              'and learn them on your own, and maybe you will ask the right questions in class, stay ahead of the class, and maybe even tutor your crush.'
              'Prep for Campus Life: Meet your favourite aunts and grandparents before you leave the nest. This is the biggest part of preparing for '
              'college. They will not see you as often once you are in college. You will be absorbed in your own life out there! So sit with them and '
              'let them tell you stories from their college life. It will feel good. '),

      newBlog('assets/Civil-Engineering-min.jpg', 'What would we do without Civil Engineers?', 'If you have an acumen for maths and science, and have been considering a career in Civil Engineering, you are probably headed in the right direction'),
      newBlog('assets/MEC_Blog_Header1.jpg', 'HERBIE, this time around, is not a Disney movie…', 'HERBIE, a Volkswagen Beetle in a series of Disney films'
              ' in the 1960s, had its share of misadventures but the ending was always a happy one. How dearly the bosses at Volkswagen must be wishing '
    'that the latest misadventure due to deliberate and systematic fraud by the company followed those Disney movie plots of the bygone era! On the '
    'contrary, the fallout of ‘Diesel Gate’, already cataclysmic, is threatening to reach epic proportions. The company faces, in billions of dollars,'
    ' fines, penalties and lawsuits that have started landing at the doorsteps of its headquarters in Wolfsburg, and yet, the financial damage may be'
    ' much more than all of these combined. Hidden within the German firm is a large finance operation that extends loans to car buyers and dealers, '
    'and also takes deposits, acting as a bank. Together, VW’s car and finance businesses had € 67 billion of bonds, deposit and debit as of June, 2015,'
    ' all of which may need to be repaid to its lenders within the next 12 months. To lend a perspective on the size of the liability, this is roughly '
    '5 times the fine that may need to be paid to the Environmental Protection Agency. And this may not be all. There is also a possibility that the counterparties'
    'may try to wind down their exposure to VW, which has a big book of derivatives whose national value exceeded € 200 billion. Despite the high financial'
    ' stakes, what was the trigger for VW to indulge in this misadventure?  Two reasons, primarily: 1) Obsession with size- overcoming Toyota and becoming '
    'the world’s biggest car manufacturer (despite making little money from its high volume products)- forcing the auto major to increase its small share '
    'of the American market where regulations are much more stringent ; 2) A cocky attitude that they could get away with the trickery (an open secret in '
    'the European car Industry) in the American market as well. While it would definitely be interesting to see if VW can pull itself out of the quagmire '
    'it finds itself in, the implications for the larger auto industry seem as fascinating as they are uncertain. In light of the new level of scrutiny '
    'and the increasing stringent emission norms, can the diesel technology deliver? Would we see a shift towards hybrids and smaller petrol engines? In '
    'face of the intense cut throat competitiveness even as the likes of non-traditional players such as Apple and Google eye up the industry, will we '
    'see more consolidation due to the desire for size? It was this ambition of becoming the world’s largest auto maker that plagued the Toyota in late '
    '2000s and the same ambition is responsible for the mess VW finds itself in today. There is no doubt that rules need to be redefined if the auto '
          'industry wants to win back the trust of its customers…!'),
    ];

    List blogCards = new List<Widget>();

    for (var i in blogTitles) {
      var blogCard = GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            new MaterialPageRoute(
              builder: (context) => new viewBlog(blog: i),
            ),
          );
        },

        child: Container(
          padding: EdgeInsets.all(16.0),
          child: makeCard(i.image, i.title, ''),
        ),
      );
      blogCards.add(blogCard);
    }

    return new Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black,),
          centerTitle: true,
          backgroundColor: Colors.white,
          title: header,
          actions: <Widget>[
            new IconButton(icon: Icon(Icons.share, color: Colors.black,), onPressed: null)
          ],
        ),

        body: new Container(
            alignment: Alignment.center,
            padding: new EdgeInsets.only(left: 0.0, top: 0.0, right: 0.0),
            child: new ListView(
              children: blogCards,
            )));
  }

}


Widget makeCard(location, mainTitle, des) {
  var cardImage = new Image(
    image: new AssetImage(location),
    width: 600.0,
    fit: BoxFit.contain,
  );

  var title = new Text(
    mainTitle,
    style: new TextStyle(
      fontSize: 20.0,
      fontFamily: 'Roboto',
      fontWeight: FontWeight.bold,
    ),
  );

  var description = new Text(
    des,
  );

  var blogs;

  if(des == '') {
    blogs = new Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: cardImage,
        ),
        title
      ],
    );
  }

  else {
    blogs = new Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10.0),
          child: cardImage,
        ),
        title,
        Container(
          padding: EdgeInsets.only(top: 10.0),
          child: description,
        )

      ],
    );
  }
  var card = new Container(
    padding: EdgeInsets.all(16.0),
    decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: [
          new BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0
          )
        ]
    ),
    child: blogs,
  );

  return card;
}


class viewBlog extends StatelessWidget {
  // Declare a field that holds the Todo
  final newBlog blog;

  // In the constructor, require a Todo
  viewBlog({Key key, @required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create our UI
    return new Scaffold(
      appBar: new AppBar(
        //title: new Text("${blog.title}"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(16.0),
            child: makeCard(blog.image, blog.title, blog.description),
          )
        ],
      )
    );
  }
}