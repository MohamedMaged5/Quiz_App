import 'package:flutter/material.dart';
import 'Screens/OpeningScreen.dart';

void main() {
  runApp(const quizzapp());
}

// ignore: camel_case_types
class quizzapp extends StatelessWidget {
  const quizzapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpeningScreen(),
    );
  }
}
