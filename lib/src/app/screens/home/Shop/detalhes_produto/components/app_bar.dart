import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/core/colors.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/pages/home/home_shop_page.dart';

class AppBarProdutoDetalhes extends StatelessWidget {
  const AppBarProdutoDetalhes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Container(
        clipBehavior: Clip.none,
        width: size.width,
        margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  PageRouteBuilder(
                    transitionDuration: const Duration(milliseconds: 1500),
                    pageBuilder: (_, __, ___) => const HomeShopPage(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "assets/images/heart.png",
              height: 30,
              width: 30,
            ),
          ],
        ),
      ),
    );
  }
}
