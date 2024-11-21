import 'package:flutter/material.dart';

class PizzaListe extends StatelessWidget {
  final pizzaRenk;
  final String pizzaCesit;
  final String pizzaFiyat;
  final String pizzaGorsel;

  final double kenarYumusaklik = 12;

  const PizzaListe({
    super.key,
    required this.pizzaRenk,
    required this.pizzaCesit,
    required this.pizzaFiyat,
    required this.pizzaGorsel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: pizzaRenk[50],
          borderRadius: BorderRadius.circular(kenarYumusaklik),
        ),
        child: Column(
          children: [
            // fiyat
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: pizzaRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kenarYumusaklik),
                      topRight: Radius.circular(kenarYumusaklik),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\₺$pizzaFiyat',
                    style: TextStyle(
                      color: pizzaRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

          
            // pizza resmi
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 50.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(pizzaGorsel),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // pizza çeşidi
            Text(
              pizzaCesit,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            
            const SizedBox(height: 4),

            Text(
              'GelmedenAl',
              style: TextStyle(color: Colors.grey[600]),
            ),

            // favori ikon + ekle button
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // favori ikon
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),
              
                  // ekle buton
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}