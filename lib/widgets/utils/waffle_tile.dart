import 'package:flutter/material.dart';

class WaffleListe extends StatelessWidget {
  final waffleRenk;
  final String waffleCesit;
  final String waffleFiyat;
  final String waffleGorsel;

  final double kenarYumusaklik = 12;

  const WaffleListe({
    super.key,
    required this.waffleRenk,
    required this.waffleCesit,
    required this.waffleFiyat,
    required this.waffleGorsel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: waffleRenk[50],
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
                    color: waffleRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kenarYumusaklik),
                      topRight: Radius.circular(kenarYumusaklik),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '$waffleFiyat₺',
                    style: TextStyle(
                      color: waffleRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // waffle resmi
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
                  image: AssetImage(waffleGorsel),
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // waffle çeşidi
            Text(
              waffleCesit,
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