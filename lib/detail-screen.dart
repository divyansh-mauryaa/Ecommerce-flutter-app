// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Payment_Page.dart';

class DetailScreen extends StatelessWidget {
  final Map<String, dynamic> cardData;

  const DetailScreen({super.key, required this.cardData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(cardData['title']),
          backgroundColor: Colors.indigo,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(CupertinoIcons.back)),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.network(
                  cardData[
                      'image'], // Assuming you have an 'image' field in your card data
                  width: 400,
                  height: 400,
                ),
                const SizedBox(height: 16.0),
                Text(
                  cardData['title'],
                  style: const TextStyle(fontSize: 20),
                ), // Display the title
                const Divider(
                  color: Colors.black,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "About the Product",
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(cardData['description']), // Display the description
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_interpolation_to_compose_strings
                Text("Processor: " + cardData['Processor']),
                Text("Ram: " + cardData['Ram']),
                Text("Storage: " + cardData['Storage']),
                Text("Manufacture brand: " + cardData['Manufacture']),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "₹" + cardData['price'],
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.black,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Payment()),
                    );
                  },
                  child: const Text('Buy Now'),
                )
                // Add more widgets to display other details as needed
              ],
            ),
          ),
        ));
  }
}
