import 'package:flutter/material.dart';
import 'package:gelmedenal/util/donut_tile.dart';

class DonutTab extends StatelessWidget {

  // list of donuts
  List donutsOnSale = [
    // [ donutFlavor, donutPrice, donutColor, imageName ]
    ["Dondurmalı", "36", Colors.blue, "lib/images/dondurmali_donut.png"],
    ["Çilekli", "45", Colors.red, "lib/images/cilekli_donut.png"],
    ["Üzümlü", "84", Colors.purple, "lib/images/uzumlu_donut.png"],
    ["Çikolatalı", "95", Colors.brown, "lib/images/cikolata_donut.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: donutsOnSale.length,
      padding: EdgeInsets.all(12),
      gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1 / 1.5,
        ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}