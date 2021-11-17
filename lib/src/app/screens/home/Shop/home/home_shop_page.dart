import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_app_bar.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_card_item.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/components/custom_title_cards.dart';

class HomeShopPage extends StatelessWidget {
  const HomeShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: size.height * 0.05,
                  left: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const TitleCards(
                      text: "Recommended for you",
                    ),
                    SizedBox(
                      height: size.height * 0.5,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CustomCardItem(
                            nameItem: "Front man toy",
                            pathImg: "assets/images/black_face.png",
                          ),
                          CustomCardItem(
                            nameItem: "Supervisor toy",
                            pathImg: "assets/images/soldado_1.png",
                          ),
                          CustomCardItem(
                            nameItem: "Supervisor toy",
                            pathImg: "assets/images/soldado_3.png",
                          ),
                          CustomCardItem(
                            nameItem: "Supervisor toy",
                            pathImg: "assets/images/soldado_2.png",
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: TitleCards(
                        text: "Game Players",
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.5,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          CustomCardItem(
                            nameItem: "Player 001",
                            pathImg: "assets/images/player_1.png",
                          ),
                          CustomCardItem(
                            nameItem: "Player 456",
                            pathImg: "assets/images/player_2.png",
                          ),
                          CustomCardItem(
                            nameItem: "Player 067",
                            pathImg: "assets/images/player_067.png",
                          ),
                          CustomCardItem(
                            nameItem: "Player 218",
                            pathImg: "assets/images/player_218.png",
                          ),
                          CustomCardItem(
                            nameItem: "Player 199",
                            pathImg: "assets/images/player_199.png",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
