import 'package:flutter/material.dart';
import 'Home.dart';

class SuccessfulPage extends StatefulWidget {
  const SuccessfulPage({super.key});

  @override
  State<SuccessfulPage> createState() => _SuccessfulPageState();
}

class _SuccessfulPageState extends State<SuccessfulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 150,
          ),
          Center(
            child: Image.network(
              "https://img.freepik.com/premium-vector/green-check-mark-symbol-icon-approved-design-concept-web-graphic-white-background_549897-1091.jpg?w=2000",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Payment Successful",
            style: TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Order Successfuly Placed",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              child: const Text("Click here to go back"))
        ],
      ),
    ));
  }
}
