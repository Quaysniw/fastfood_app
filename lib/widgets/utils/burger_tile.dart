import 'package:flutter/material.dart';

class BurgerListe extends StatelessWidget {
  final burgerRenk;
  final String burgerCesit;
  final String burgerFiyat;
  final String burgerGorsel;

  final double kenarYumusaklik = 12;

  const BurgerListe({
    super.key,
    required this.burgerRenk,
    required this.burgerCesit,
    required this.burgerFiyat,
    required this.burgerGorsel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: burgerRenk[50],
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
                    color: burgerRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kenarYumusaklik),
                      topRight: Radius.circular(kenarYumusaklik),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '$burgerFiyat₺',
                    style: TextStyle(
                      color: burgerRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // burger resmi
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
                  image: AssetImage(burgerGorsel),
                  fit: BoxFit.contain,
                ),
              ),
              // child: Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 50.0,
              //     vertical: 25,
              //   ),
              //   child: Image.asset(
              //     burgerGorsel,
              //     fit: BoxFit.cover,
              //   ),
                
              // ),
            ),

            // burger çeşidi
            Text(
              burgerCesit,
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