import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MovieForYouTabs extends StatefulWidget {

  final Widget child;

  MovieForYouTabs({Key key, this.child}) : super(key: key);

  @override
  _MovieForYouTabsState createState() => _MovieForYouTabsState();
}

class _MovieForYouTabsState extends State<MovieForYouTabs> {
 
  final List<String> imgList = [
    'https://lh3.googleusercontent.com/GJAnttuWVk8IcpLlkMVMjyPWkgGc1-8_kFGoKa5GDP21rMKZt4AztM-hn5Q6WQdKFEg=w200-h300-rw',
    'https://lh3.googleusercontent.com/gNBb6s2J9aRrQE8wk6mppKbb46uYcW1p5EuzknTZF3Ds6hYM9QrWgO8rdlQDyY2A7Vmi=w200-h300-rw',
    'https://lh3.googleusercontent.com/IGPFCdnnT8Sp1kI___pIWlWFRlLaKgAzu7eP_QXw0FbZQ_gg3WvXqbhbiWaE9_hVEGd4Bw=w200-h300-rw',
    'https://lh3.googleusercontent.com/GVpOcjU50jtPmlNbB331263RgHv_NEqE-FnweqvUWleO94Ckvrznw05kwUGk1oKp5GA=w200-h300-rw',
    'https://lh3.googleusercontent.com/t58TiR9gox0kZ9o1GBY5qN6Ywg2HjaQ6n2cUPc_KYJntdcsVl5CGKOPjLwMcapUhD2fr-w=w200-h300-rw',
    'https://lh3.googleusercontent.com/zZ1ZSFCBB4iiA6MEOaZxHJX214soedvkqwRHGB58gnODQeVQUI1ID3wpEje-SOWFOavQNA=w200-h300-rw'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          CarouselContainer(),
        ],
      ),
    );
  }

  Widget CarouselContainer() {
  return CarouselSlider(
    viewportFraction: 0.9,
    aspectRatio: 2.0,
    autoPlay: true,
    enlargeCenterPage: true,
    items: imgList.map(
      (url) {
        return Container(
          margin: EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Image.network(
              url,
              fit: BoxFit.cover,
              width: 1000.0,
            ),
          ),
        );
      },
    ).toList(),
  );
}


}

