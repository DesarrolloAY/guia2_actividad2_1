import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('../../assets/images/cerezo1.jpg'),
          Image.asset('../../assets/images/cerezo1.jpg'),
          Image.asset('../../assets/images/cerezo1.jpg'),
        ],
      ),
    );
  }
}
