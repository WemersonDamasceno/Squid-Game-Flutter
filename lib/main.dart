import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/core/colors.dart';
import 'package:squid_game_flutter/src/app/screens/home/home_page.dart';
import 'package:squid_game_flutter/src/app/screens/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Squid Game',
      theme:
          ThemeData(fontFamily: 'Andada SC', primarySwatch: RoundColor.primary),
      home: const SplashPage(),
      initialRoute: '/',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const Home(),
      },
    );
  }
}
