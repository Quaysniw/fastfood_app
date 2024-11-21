import 'package:flutter/material.dart';
import 'package:gelmedenal/util/burger_tile.dart';

class BurgerTab extends StatelessWidget {

  // burger listesi
  List burgerSatis = [
    // [ burgerCesit, burgerFiyat, burgerRenk, burgerGorsel ]
    ["Triple Burger", "200", Colors.yellow, "assets/images/urunler/burgerler/triple_burger.png"],
    ["Double Burger", "170", Colors.red, "assets/images/urunler/burgerler/double_burger.png"],
    ["Pastırma Burger", "130", Colors.grey, "assets/images/urunler/burgerler/pastirma_burger.png"],
    ["Tavuk Burger", "100", Colors.brown, "assets/images/urunler/burgerler/tavuk_burger.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: burgerSatis.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),

      itemBuilder: (context, index) {
        return BurgerListe(
          burgerCesit: burgerSatis[index][0],
          burgerFiyat: burgerSatis[index][1],
          burgerRenk: burgerSatis[index][2],
          burgerGorsel: burgerSatis[index][3],
        );
      },
    );
  }
}