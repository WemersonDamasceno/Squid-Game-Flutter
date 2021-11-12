import 'package:flutter/material.dart';

class ApresentacaoSecondCard extends StatelessWidget {
  const ApresentacaoSecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.centerRight,
        children: [
          SizedBox(
            width: 300,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: const [
                        Text(
                          "Sugar",
                          style: TextStyle(
                            color: Colors.brown,
                            fontSize: 24,
                          ),
                        ),
                        Text(
                          "Honeycombs",
                          style:
                              TextStyle(fontSize: 21, color: Color(0xff0b0b0b)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.075,
            left: MediaQuery.of(context).size.height * 0.17,
            child: Image.asset(
              "../assets/images/second_game.png",
              height: MediaQuery.of(context).size.height * 0.20,
            ),
          ),
        ],
      ),
    );
  }
}
