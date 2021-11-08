import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/RulesGame/FirstGame/first_game_page.dart';

class RuleNavigation extends StatefulWidget {
  const RuleNavigation({Key? key}) : super(key: key);

  @override
  _RuleNavigationState createState() => _RuleNavigationState();
}

class _RuleNavigationState extends State<RuleNavigation> {
  int _currentIndex = 0;

  List cardList = [FirstGame(), FirstGame(), FirstGame()];

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
              height: MediaQuery.of(context).size.height,
              autoPlayCurve: Curves.fastOutSlowIn,
              viewportFraction: 1,
              aspectRatio: 2.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Card(
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