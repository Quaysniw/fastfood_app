import 'package:flutter/material.dart';

class SmoothieListe extends StatelessWidget {
  final smoothieRenk;
  final String smoothieCesit;
  final String smoothieFiyat;
  final String smoothieGorsel;

  final double kenarYumusaklik = 12;

  const SmoothieListe({
    super.key,
    required this.smoothieRenk,
    required this.smoothieCesit,
    required this.smoothieFiyat,
    required this.smoothieGorsel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: smoothieRenk[50],
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
                    color: smoothieRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kenarYumusaklik),
                      topRight: Radius.circular(kenarYumusaklik),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '$smoothieFiyat₺',
                    style: TextStyle(
                      color: smoothieRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

          
            // smoothie resmi
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
                  image: AssetImage(smoothieGorsel),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // smoothie çeşidi
            Text(
              smoothieCesit,
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