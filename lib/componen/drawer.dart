import 'package:aplikasi_penjualan/componen/listtile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
              child: Image.asset(
            'assets/img/logo.png',
            width: 200,
            height: 200,
          )),
          const SizedBox(
            height: 25,
          ),
          MyListTile(
              text: 'Home Page',
              icon: Icons.home_outlined,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/shopPage');
              }),
          MyListTile(
              text: 'Chart Page',
              icon: Icons.shopping_bag_outlined,
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/orderPage');
              }),
        ],
      ),
    );
  }
}
