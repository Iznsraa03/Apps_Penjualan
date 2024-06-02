import 'package:aplikasi_penjualan/models/produk.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        nama: 'Green tea Boba',
        harga: 12.000,
        deskripsi: 'Minuman segar rasa green tea',
        img: 'assets/img/greentea.png'),
    Product(
        nama: 'Thai Tea',
        harga: 14.000,
        deskripsi: 'Minuman Teh khas dari Thailand',
        img: 'assets/img/logo.png')
  ];

  List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeFromCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
