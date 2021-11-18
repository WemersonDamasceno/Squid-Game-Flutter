import 'package:flutter/material.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/detalhes_produto/detalhes_produto_page.dart';
import 'package:squid_game_flutter/src/app/screens/home/Shop/home/repositories/itens_shop_repositorie.dart';

import 'components/custom_app_bar.dart';
import 'components/custom_card_item.dart';
import 'components/custom_title_cards.dart';

class HomeShopPage extends StatelessWidget {
  const HomeShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final listSoldados = ItemShopRepositorie().itemsListSoldados;
    final listPlayers = ItemShopRepositorie().itemsListPlayers;
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
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listSoldados.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomCardItem(
                              pathImg: listSoldados[index].pathImage,
                              nameItem: listSoldados[index].nome,
                              onPress: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    /*settings: RouteSettings(
                                      arguments: 
                                    ),*/
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    pageBuilder: (_, __, ___) =>
                                        DetalhesProduto(
                                      produto: listSoldados[index],
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: TitleCards(
                        text: "Game Players",
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.5,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listPlayers.length,
                          itemBuilder: (BuildContext context, int index) {
                            return CustomCardItem(
                              pathImg: listPlayers[index].pathImage,
                              nameItem: listPlayers[index].nome,
                              onPress: () {
                                Navigator.push(
                                  context,
                                  PageRouteBuilder(
                                    /*settings: RouteSettings(
                                      arguments: 
                                    ),*/
                                    transitionDuration:
                                        const Duration(seconds: 1),
                                    pageBuilder: (_, __, ___) =>
                                        DetalhesProduto(
                                      produto: listPlayers[index],
                                    ),
                                  ),
                                );
                              },
                            );
                          }),
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
