import 'package:bornomala_app/pages/banjonborno_page.dart';
import 'package:bornomala_app/pages/shoroborno_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ShorobornoPage()));
                },
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red[900],
                  ),
                  child: Center(
                    child: Text(
                      'স্বরবর্ণ',
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BanjonBornoPage()));
                },
                child: Container(
                  height: 70,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.red[900],
                  ),
                  child: Center(
                    child: Text(
                      'ব্যঞ্জনবর্ণ',
                      style: TextStyle(
                        color: Colors.yellow[700],
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
