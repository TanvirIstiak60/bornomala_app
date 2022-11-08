import 'package:bornomala_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bornomala());
}

class Bornomala extends StatelessWidget {
  const Bornomala({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bornomala',
      home: SplashScreen(),
    );
  }
}
