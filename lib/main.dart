import 'package:flutter/material.dart';
import 'Home.dart';
import 'Payment_Page.dart';
import 'Profile.dart';
import 'pay_successful.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: Home(),
    );
  }
}