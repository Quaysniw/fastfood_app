import 'package:flutter/material.dart';
import 'package:gelmedenal/tab/burger_tab.dart';
import 'package:gelmedenal/tab/donut_tab.dart';
import 'package:gelmedenal/tab/pancake_tab.dart';
import 'package:gelmedenal/tab/pizza_tab.dart';
import 'package:gelmedenal/tab/smoothie_tab.dart';
import 'package:gelmedenal/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // my tabs
  List<Widget> myTabs = const [
    // donut tab
    MyTab(
      iconPath: 'lib/icons/donut.png',
    ),

    // burger tab
    MyTab(
      iconPath: 'lib/icons/burger.png',
    ),

    // smoothie tab
    MyTab(
      iconPath: 'lib/icons/smoothie.png',
    ),

    // pancake tab
    MyTab(
      iconPath: 'lib/icons/pancakes.png',
    ),

    // pizza tab
    MyTab(
      iconPath: 'lib/icons/pizza.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                  // Hesap butonuna tıklanıldı
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
          // ne yemek istersin
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 18,
            ),
            child: Row(
              children: [
                Text(
                  'Ne yemek istersin?',
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
          TabBar(tabs: myTabs),
      
          // tab bar view
          Expanded(
            child: TabBarView(
              children: [
                // donut page
                DonutTab(),

                // burger page
                BurgerTab(),

                // smoothie page
                SmoothieTab(),

                // pancake page
                PancakeTab(),

                // pizza page
                PizzaTab(),
              ],
            ),
          )
        ],),
      ),
    );
  }
}