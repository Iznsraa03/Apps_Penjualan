import 'package:aplikasi_penjualan/componen/button.dart';
import 'package:aplikasi_penjualan/componen/drawer.dart';
import 'package:aplikasi_penjualan/componen/produk_tile.dart';
import 'package:aplikasi_penjualan/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        title: const Text('HOME'),
        leading:
            ButtonKu(onTap: () {}, child: Image.asset('assets/img/logo.png')),
      ),
      drawer: const MyDrawer(),
      body: Container(
        child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(15),
            itemBuilder: (context, index) {
              final product = products[index];
              return MyProductTile(product: product);
            }),
      ),
    );
  }
}
