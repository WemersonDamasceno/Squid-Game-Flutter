import 'package:flutter/material.dart';

class ApresentacaoCard extends StatelessWidget {
  const ApresentacaoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                  height: size.height * 0.1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Red ",
                            style: TextStyle(color: Colors.red, fontSize: 24),
                          ),
                          Text(
                            "Light",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xff0b0b0b)),
                          ),
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "&",
                            style: TextStyle(fontSize: 20),
                          ),
                          Text(
                            " Green",
                            style: TextStyle(color: Colors.green, fontSize: 24),
                          ),
                          Text(" Light", style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: -size.height * 0.108,
            child: Image.asset(
              "assets/images/first_game.png",
              height: MediaQuery.of(context).size.height * 0.25,
            ),
          ),
        ],
      ),
    );
  }
}
