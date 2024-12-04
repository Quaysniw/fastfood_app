import 'package:flutter/material.dart';
import 'package:gelmedenal/tabs/urunler/waffle/waffle_tile.dart';

class WaffleTab extends StatelessWidget {

  // waffle listesi
  List waffleSatis = [
    // [waffleCesit, waffleFiyat, waffleRenk, waffleGorsel ]
    ["Dondurmalı Waffle", "250", Colors.yellow, "assets/images/urunler/waffle/dondurmali_waffle.png"],
    ["Waffle", "200", Colors.red, "assets/images/urunler/waffle/waffle.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: waffleSatis.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),

      itemBuilder: (context, index) {
        return WaffleListe(
          waffleCesit: waffleSatis[index][0],
          waffleFiyat: waffleSatis[index][1],
          waffleRenk: waffleSatis[index][2],
          waffleGorsel: waffleSatis[index][3],
        );
      },
    );
  }
}