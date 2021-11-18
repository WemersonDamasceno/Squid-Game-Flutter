import 'package:squid_game_flutter/src/app/screens/home/Shop/home/models/item_shop.dart';

class ItemShopRepositorie {
  final List<ItemProduto> itemsListSoldados = [
    ItemProduto(
        nome: "Front man toy",
        pathImage: "assets/images/black_face.png",
        price: 30.0),
    ItemProduto(
        nome: "Supervisor toy",
        pathImage: "assets/images/soldado_1.png",
        price: 15.0),
    ItemProduto(
        nome: "Supervisor toy",
        pathImage: "assets/images/soldado_3.png",
        price: 12.0),
    ItemProduto(
        nome: "Supervisor toy",
        pathImage: "assets/images/soldado_2.png",
        price: 7.0),
  ];
  final List<ItemProduto> itemsListPlayers = [
    ItemProduto(
        nome: "Player 001",
        pathImage: "assets/images/player_1.png",
        price: 20.0),
    ItemProduto(
        nome: "Player 456",
        pathImage: "assets/images/player_2.png",
        price: 30.0),
    ItemProduto(
        nome: "Player 067",
        pathImage: "assets/images/player_067.png",
        price: 10.0),
    ItemProduto(
        nome: "Player 218",
        pathImage: "assets/images/player_218.png",
        price: 15.0),
    ItemProduto(
        nome: "Player 199",
        pathImage: "assets/images/player_199.png",
        price: 15.0),
  ];
}
