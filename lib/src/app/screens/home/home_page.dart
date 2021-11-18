import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/core/colors.dart';
import 'package:squid_game_flutter/src/app/screens/home/Faturamento/faturamento_page.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/pages/home/home_shop_page.dart';

import 'RulesGame/rules_navigation.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    RuleNavigation(),
    HomeShopPage(),
    Faturamento(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void confirmed() {
    print('Slider confirmed!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 20,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.tv_rounded),
            label: 'Série',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_rounded),
            label: 'Faturamento',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: RoundColor.primary,
        onTap: _onItemTapped,
      ),
    );
  }
}
