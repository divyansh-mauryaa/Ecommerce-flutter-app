// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'detail-screen.dart';
import 'Profile.dart';
import 'profile_page.dart';
import 'Products.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  // Declare mutable variables here if needed
  int currentPageIndex = 0;

  List<Map<String, dynamic>> filteredProducts = [];

  @override
  void initState() {
    super.initState();
    filteredProducts.addAll(Products);
  }

  void filterCards(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredProducts.clear();
        filteredProducts.addAll(Products);
      } else {
        filteredProducts.clear();
        filteredProducts.addAll(Products.where((card) =>
            card['title'].toLowerCase().contains(query.toLowerCase())));
      }
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ecommerce App'),
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.shop_outlined),
            selectedIcon: Icon(Icons.shop),
            label: 'Shop',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_2_outlined),
            label: 'Profile',
          ),
        ],
      ),
      //Shop
      body: <Widget>[
        ListView.builder(
          itemCount: Products.length,
          itemBuilder: (context, index) {
            final cardItem = Products[index];
            return ListTile(
              leading: Image.network(
                cardItem['image'],
                width: 60,
                height: 160,
              ),
              title: Text(
                cardItem['title'],
              ),
              subtitle: Text(cardItem['shortDef']),
              onTap: () {
                // Navigate to the detail screen when a card is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(cardData: cardItem),
                  ),
                );
              },
            );
          },
        ),
        const Profile(),
      ][currentPageIndex],
    );
  }
}
