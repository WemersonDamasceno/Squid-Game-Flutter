import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_app_bar.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_card_item.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_title_cards.dart';

class HomeShopPage extends StatelessWidget {
  const HomeShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.05,
                    left: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleCards(
                        text: "Recommended for you",
                      ),
                      Row(
                        children: const [
                          CustomCardItem(),
                          CustomCardItem(),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 15.0),
                        child: TitleCards(
                          text: "Recent orders",
                        ),
                      ),
                      Row(
                        children: const [
                          CustomCardItem(),
                          CustomCardItem(),
                        ],
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
