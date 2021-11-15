import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_app_bar.dart';

class HomeShopPage extends StatelessWidget {
  const HomeShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: const [
            CustomAppBar(),
            Text("Home Shop"),
          ],
        ),
      ),
    );
  }
}
