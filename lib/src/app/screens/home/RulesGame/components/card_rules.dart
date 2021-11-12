import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardRules extends StatelessWidget {
  final String imageAsset;
  final Color backgroundCard;
  final String messageCard;
  const CardRules(
      {Key? key,
      required this.imageAsset,
      required this.backgroundCard,
      required this.messageCard})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 80,
        width: MediaQuery.of(context).size.width * 0.9,
        child: Card(
          color: backgroundCard,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Image.asset(
                imageAsset,
                width: MediaQuery.of(context).size.width * 0.09,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.61,
                  height: 50,
                  child: Text(messageCard),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
