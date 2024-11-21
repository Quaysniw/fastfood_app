import 'package:flutter/material.dart';
import 'package:gelmedenal/util/smoothie_tile.dart';

class SmoothieTab extends StatelessWidget {

  // smoothie listesi
  List smoothieSatis = [
    // [smoothieCesit, smoothieFiyat, smoothieRenk, smoothieGorsel ]
    ["Portakkalı", "180", Colors.orange, "assets/images/urunler/smoothie/portakalli_smoothie.png"],
    ["Misket Limonlu", "180", Colors.lime, "assets/images/urunler/smoothie/misket_limonlu_smoothie.png"],
    ["Elmalı", "110", Colors.green, "assets/images/urunler/smoothie/elmali_smoothie.png"],
    ["Çilekli", "110", Colors.pink, "assets/images/urunler/smoothie/cilekli_smoothie.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: smoothieSatis.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),

      itemBuilder: (context, index) {
        return SmoothieListe(
          smoothieCesit: smoothieSatis[index][0],
          smoothieFiyat: smoothieSatis[index][1],
          smoothieRenk: smoothieSatis[index][2],
          smoothieGorsel: smoothieSatis[index][3],
        );
      },
    );
  }
}