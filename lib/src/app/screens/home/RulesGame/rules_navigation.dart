import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'FirstGame/first_game_page.dart';
import 'SecondGame/second_game_page.dart';
import 'ThirdGame/third_game_page.dart';

class RuleNavigation extends StatefulWidget {
  const RuleNavigation({Key? key}) : super(key: key);

  @override
  _RuleNavigationState createState() => _RuleNavigationState();
}

class _RuleNavigationState extends State<RuleNavigation> {
  int _currentIndex = 0;

  List cardList = const [
    FirstGame(),
    SecondGame(),
    ThirdGame(),
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height * 0.922,
              autoPlayCurve: Curves.fastOutSlowIn,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Card(
                  elevation: 0,
                  shadowColor: Colors.white,
                  child: card,
                );
              });
            }).toList(),
          ),
        ],
      ),
    );
  }
}
