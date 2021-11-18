import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:squid_game_flutter/src/app/core/colors.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/detalhes_produto/components/app_bar.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/models/item_shop.dart';

import 'components/custom_rounded_buttom.dart';

class DetalhesProduto extends StatelessWidget {
  final ItemProduto produto;
  const DetalhesProduto({Key? key, required this.produto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final valor = produto.price;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  height: size.height * 0.55,
                  width: size.width * 0.5,
                  decoration: const BoxDecoration(
                    color: RoundColor.pinkShade,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Hero(
                  tag: produto.pathImage,
                  child: Image.asset(
                    produto.pathImage,
                    height: size.height * 0.48,
                  ),
                ),
              ),
              const AppBarProdutoDetalhes(),
            ],
          ),
          Text(
            produto.nome,
            style: GoogleFonts.poppins(
              fontSize: size.width * 0.1,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      "R\$ ",
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff8B8BA1),
                      ),
                    ),
                    Text(
                      produto.price.toString(),
                      style: GoogleFonts.poppins(
                        fontSize: size.width * 0.07,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff8B8BA1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                child: Row(
                  children: [
                    RoundedButtom(
                      color: RoundColor.pinkShade,
                      icon: Icons.arrow_downward_rounded,
                      onPress: () {},
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "1",
                        style: GoogleFonts.poppins(
                          fontSize: size.width * 0.07,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff8B8BA1),
                        ),
                      ),
                    ),
                    RoundedButtom(
                      color: RoundColor.primary,
                      icon: Icons.arrow_upward_rounded,
                      onPress: () {},
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/star.png"),
                    Image.asset("assets/images/star.png"),
                    Image.asset("assets/images/star.png"),
                    Image.asset("assets/images/star.png"),
                    Image.asset("assets/images/star.png"),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: size.height * 0.08,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: RoundColor.pinkShade,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7), // <-- Radius
                        ),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Add to cart",
                            style: GoogleFonts.poppins(
                              fontSize: size.width * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const Icon(Icons.shopping_cart_outlined,
                              color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.08,
                    width: size.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: RoundColor.primary,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7), // <-- Radius
                        ),
                      ),
                      child: Text(
                        "Buy now",
                        style: GoogleFonts.poppins(
                          fontSize: size.width * 0.06,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
