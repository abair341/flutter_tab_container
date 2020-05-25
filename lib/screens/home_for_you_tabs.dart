import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeForYouTabs extends StatefulWidget {
  @override
  _HomeForYouTabsState createState() => _HomeForYouTabsState();
}

class _HomeForYouTabsState extends State<HomeForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ImageContainer(),
          SizedBox(
            height: 20.0,
          ),
          InstalledApps(),
          SizedBox(
            height: 20.0,
          ),
          InstalledApps(),
        ],
      ),
    );
  }
}

Widget ImageContainer() {
  return Container(
    height: 200.0,
    child: Image.network(
      "https://www.bluemoongame.com/wp-content/uploads/2018/12/Marvel_Strike_Force_Alliance_War_Update.png",
      fit: BoxFit.cover,
    ),
  );
}

Widget InstalledApps() {
  return Material(
    color: Colors.white,
    elevation: 14.0,
    shadowColor: Color(0x802196F3),
    child: Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(8.0),
          child: labelContainer('Previously installed apps'),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: appsRecommendedContainer(),
        ),
      ],
    ),
  );
}

Widget labelContainer(String labelVal) {
  return Container(
    height: 30.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          labelVal,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
        Text(
          'MORE',
          style: TextStyle(
              color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
      ],
    ),
  );
}

Widget appsRecommendedContainer() {
  return Container(
      height: 160.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          imageSection(
              'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
              'Amazon Kindle',
              '4.2'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/7uRfJe2KkpKxZuMvY4OjhIq-TJrMeHgWYQt0H7LHZl4WNDAYjI6FFrLSsLhj2g8cqKr5=s180-rw',
              'Audible',
              '4.5'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/d6TTnyRybU8B2naK8a0y1_u8ufjtK5V-mizS6o1tCx0U1aYPX9nJzcq9rSm5W2VVzBw=s180-rw',
              'Skype',
              '4.1'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.ggpht.com/-wROmWQVYTcjs3G6H0lYkBK2nPGYsY75Ik2IXTmOO2Oo0SMgbDtnF0eqz-BRR1hRQg=s180-rw',
              'Google Docs',
              '4.4'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/S3kGpXqfWleVJuCSH-nFuoz3Ey7se8pnwSe2OP9pbm2e-DHRlNdlmM6njhsUyV4bmE8=s180-rw',
              'Polaris',
              '4.3'),
          SizedBox(
            width: 20.0,
          ),
          imageSection(
              'https://lh3.googleusercontent.com/uI7mYOHs-xu-3oclPekf0Keaubhc_h_Q5wq9YdupUR1PzOGge5zV_CWnOBNAs45pDM7I=s180-rw',
              'OfficeSuite',
              '4.3'),
        ],
      ));
}

 Widget imageSection(String imageVal, String appVal,String rateVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 9.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 9.0,
        ),
        Row(children: <Widget>[
          Text(
          rateVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        Icon(FontAwesomeIcons.solidStar,size: 10.0,),
        ],)
      ],
    );
  }
