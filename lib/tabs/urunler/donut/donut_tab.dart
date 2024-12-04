import 'package:flutter/material.dart';
import 'package:gelmedenal/tabs/urunler/donut/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // donut listesi
  List donutSatis = [
    // [ donutCesit, donutFiyat, donutRenk, donutGorsel ]
    ["Üzümlü", "45", Colors.red, "assets/images/urunler/donutlar/uzumlu_donut.png"],
    ["Çilekli", "45", Colors.pink, "assets/images/urunler/donutlar/cilekli_donut.png"],
    ["Beyaz Çikolatalı", "40", Colors.blueGrey, "assets/images/urunler/donutlar/beyaz_cikolatali_donut.png"],
    ["Çikolatalı", "40", Colors.brown, "assets/images/urunler/donutlar/cikolatali_donut.png"],
    ["Dondurmalı", "35", Colors.blue, "assets/images/urunler/donutlar/dondurmali_donut.png"],
    ["Donut", "30", Colors.yellow, "assets/images/urunler/donutlar/sade_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutSatis.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),

      itemBuilder: (context, index) {
        return DonutListe(
          donutCesit: donutSatis[index][0],
          donutFiyat: donutSatis[index][1],
          donutRenk: donutSatis[index][2],
          donutGorsel: donutSatis[index][3],
        );
      },
    );
  }
}