import 'package:flutter/material.dart';
import 'package:gelmedenal/pages/home_page.dart'; //home_page.dart'ı aktardım

void main() {
  runApp(const MyApp()); // MyApp widget ını kök widget olarak çalıştırdım
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug yazısını kaldırma
      home: const HomePage(), // uygulama ilk açıldığında HomePage sayfası açılır
      theme: ThemeData(
        primarySwatch: Colors.pink, // uygulamamnın genel renk teması
      ),  
    );
  }
}