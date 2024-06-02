import 'package:aplikasi_penjualan/models/shop.dart';
import 'package:aplikasi_penjualan/page/homepage.dart';
import 'package:aplikasi_penjualan/page/orderpage.dart';
import 'package:aplikasi_penjualan/page/splash.dart';
import 'package:aplikasi_penjualan/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      routes: {
        '/shopPage': (context) => const HomePage(),
        '/orderPage': (context) => const OrderPage()
      },
      theme: color,
    );
  }
}
