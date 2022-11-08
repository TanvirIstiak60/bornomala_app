import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bornomala_app/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Image(
              image: AssetImage(
                'assets/banglaBornomala.png',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'KIDS ALPHABET',
            style: GoogleFonts.bebasNeue(fontSize: 40),
          ),
          const Text(
            'by GSDA team',
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      splashTransition: SplashTransition.slideTransition,
      splashIconSize: 250,
      duration: 3000,
      nextScreen: const HomePage(),
    );
  }
}
