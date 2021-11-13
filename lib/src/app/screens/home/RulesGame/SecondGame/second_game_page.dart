import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/core/colors.dart';
import 'package:squid_game_flutter/src/app/screens/home/RulesGame/components/card_rules.dart';

import 'widgets/apresentacao_second.dart';

class SecondGame extends StatelessWidget {
  const SecondGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/fundo_home.png",
              ),
            ),
          ),
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 0.35,
          child: Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 60),
            child: Column(
              children: const [
                Text(
                  "Your Second Game",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                ApresentacaoSecondCard(),
              ],
            ),
          ),
        ),
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.bottomCenter,
          children: [
            const SizedBox(
              height: 20,
            ),
            Positioned(
              top: -70,
              child: Container(
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
                          imageAsset: "assets/images/bola_forma.png",
                          backgroundCard: Colors.grey.shade50,
                          messageCard:
                              "Each player receives a candy in a different form."),
                      CardRules(
                        imageAsset: "assets/images/triangulo_forma.png",
                        backgroundCard: Colors.grey.shade50,
                        messageCard:
                            "The player must remove the shape from its respective mold using a pin.",
                      ),
                      CardRules(
                        imageAsset: "assets/images/quadrado_forma.png",
                        backgroundCard: Colors.red.shade50,
                        messageCard:
                            "The player who breaks his form will be eliminated.",
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.1),
                        child: Image.asset("assets/images/swap.png",
                            color: RoundColor.primary),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
