import 'package:flutter/material.dart';

class Product {
  final String nama;
  final double harga;
  final String deskripsi;
  final String img;

  Product(
      {required this.nama,
      required this.harga,
      required this.deskripsi,
      required this.img});
}
