import 'package:flutter/material.dart';

class DonutListe extends StatelessWidget {
  final dynamic donutRenk;
  final String donutCesit;
  final String donutFiyat;
  final String donutGorsel;

  final double kenarYumusaklik = 12;

  const DonutListe({
    super.key,
    required this.donutRenk,
    required this.donutCesit,
    required this.donutFiyat,
    required this.donutGorsel,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutRenk[50],
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
                    color: donutRenk[100],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(kenarYumusaklik),
                      topRight: Radius.circular(kenarYumusaklik),
                    ),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    '\₺$donutFiyat',
                    style: TextStyle(
                      color: donutRenk[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),

            // donut resmi
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50.0,
                vertical: 25,
              ),
              child: Image.asset(donutGorsel),
            ),

            // donut çeşidi
            Text(
              donutCesit,
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
              padding: const EdgeInsets.all(12.0),
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
            )
          ],
        ),
      ),
    );
  }
}