import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intropageone extends StatefulWidget {
  const Intropageone({super.key});

  @override
  State<Intropageone> createState() => _IntropageoneState();
}

class _IntropageoneState extends State<Intropageone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/splashscreenoneintro.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 100,
            child: Text(
              "In every end, there is a new beginning—welcome to yours.",
              textAlign: TextAlign.center,
              style: GoogleFonts.titanOne(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
