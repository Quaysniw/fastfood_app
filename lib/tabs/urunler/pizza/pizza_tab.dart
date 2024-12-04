import 'package:flutter/material.dart';
import 'package:gelmedenal/tabs/urunler/pizza/pizza_tile.dart';

class PizzaTab extends StatelessWidget {

  // pizza listesi
  List pizzaSatis = [
    // [pizzaCesit, pizzaFiyat, pizzaRenk, pizzaGorsel ]
    ["Pastırmalı Pizza", "280", Colors.yellow, "assets/images/urunler/pizza/pastirmali_pizza.png"],
    ["Karışık Pizza", "230", Colors.red, "assets/images/urunler/pizza/karisik_pizza.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: pizzaSatis.length,
      padding: const EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),

      itemBuilder: (context, index) {
        return PizzaListe(
          pizzaCesit: pizzaSatis[index][0],
          pizzaFiyat: pizzaSatis[index][1],
          pizzaRenk: pizzaSatis[index][2],
          pizzaGorsel: pizzaSatis[index][3],
        );
      },
    );
  }
}