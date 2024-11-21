import 'package:flutter/material.dart';
import 'package:gelmedenal/tab/donut_tab.dart';
import 'package:gelmedenal/tab/burger_tab.dart';
import 'package:gelmedenal/tab/smoothie_tab.dart';
import 'package:gelmedenal/tab/waffle_tab.dart';
import 'package:gelmedenal/tab/pizza_tab.dart';
import 'package:gelmedenal/util/tab_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // urun tabs
  List<Widget> urunTab = const [
    // donut tab
    TabWidget(
      iconPath: 'assets/icons/urunler/donut.png',
    ),

    // burger tab
    TabWidget(
      iconPath: 'assets/icons/urunler/burger.png',
    ),

    // smoothie tab
    TabWidget(
      iconPath: 'assets/icons/urunler/smoothie.png',
    ),

    // waffle tab
    TabWidget(
      iconPath: 'assets/icons/urunler/waffle.png',
    ),

    // pizza tab
    TabWidget(
      iconPath: 'assets/icons/urunler/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: urunTab.length,
      child: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                // open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  // Hesap butonuna tıklama işlemi
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
          // ne yemek istersin
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 18,
            ),
            child: Row(
              children: [
                Text(
                  'Ne yemek istersiniz?',
                  style: TextStyle(fontSize: 24),
                ),
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
      
          const SizedBox(height: 24),

          // tab bar
          TabBar(tabs: urunTab),
      
          // tab bar görünümü
          Expanded(
            child: TabBarView(
              children: [
                // donut sayfası
                DonutTab(),

                // burger sayfası
                BurgerTab(),

                // smoothie sayfası
                SmoothieTab(),

                // pancake sayfası
                WaffleTab(),

                // pizza sayfası
                PizzaTab(),
              ],
            ),
          )
        ],),
      ),
    );
  }
}