import 'package:flutter/material.dart';

class ShopIntro extends StatelessWidget {
  const ShopIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        color: const Color(0xFF191919),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/bg.png",
              ),
            ),
          ),
          width: size.width,
          height: size.height * 0.92,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: SizedBox(
                  height: size.height * 0.35,
                  width: size.width,
                  child: Card(
                    shadowColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 20,
                    color: Colors.grey.withOpacity(0.3),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Hero(
                          tag: 'intro',
                          child: Image.asset(
                            "assets/images/logo.png",
                            width: 160,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.61,
                          child: const Text(
                            "Shop your favourite toys and outfits of the Squid Game on the go!",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: size.width,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.popAndPushNamed(context, "/homeShop");
                              },
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )),
                              child: const Text("Go Shop"),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
