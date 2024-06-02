import 'package:aplikasi_penjualan/models/produk.dart';
import 'package:aplikasi_penjualan/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  void removeItemFromCart(BuildContext context, Product product) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              backgroundColor: Colors.grey.shade800,
              content: const Text(
                'Apakah Kamu Ingin Menghapus Pesanan Dari Keranjang?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              actions: [
                MaterialButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Batal'),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removeFromCart(product);
                  },
                  child: const Text('Iya'),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text('Cart Page'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];

                    return ListTile(
                      leading: Image.asset(item.img),
                      title: Text(item.nama),
                      subtitle:
                          Text('\Rp ' + item.harga.toStringAsPrecision(5)),
                      trailing: IconButton(
                          onPressed: () => removeItemFromCart(context, item),
                          icon: Icon(Icons.remove_circle_outline)),
                    );
                  }))
        ],
      ),
    );
  }
}
