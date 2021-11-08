import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/RulesGame/components/apresentacao_card.dart';
import 'package:squid_game_flutter/src/app/screens/RulesGame/components/card_rules.dart';

class FirstGame extends StatelessWidget {
  const FirstGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  "../assets/images/fundo_home.png",
                ),
              ),
            ),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.35,
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: const [
                  Text(
                    "Your First Game",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  ApresentacaoCard(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text("How to play:"),
                    ),
                    CardRules(
                        imageAsset: "assets/images/semaforo_green.png",
                        backgroundCard: Colors.green.shade50,
                        messageCard:
                            "When the light is green, all players can move."),
                    CardRules(
                      imageAsset: "assets/images/semaforo_red.png",
                      backgroundCard: Colors.red.shade50,
                      messageCard:
                          "When the light is green, all players must be still",
                    ),
                    CardRules(
                      imageAsset: "assets/images/semaforo_close.png",
                      backgroundCard: Colors.grey.shade50,
                      messageCard:
                          "If a player moves during the red light, he will be eliminated.",
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
