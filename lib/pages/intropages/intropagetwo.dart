import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paper_trail/pages/selectionpage.dart';

class Intropagetwo extends StatefulWidget {
  const Intropagetwo({super.key});

  @override
  State<Intropagetwo> createState() => _IntropagetwoState();
}

class _IntropagetwoState extends State<Intropagetwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/assets/images/splashtwopng.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 100,
            child: Text(
              "Every great journey begins \n with a single step.",
              textAlign: TextAlign.center,
              style: GoogleFonts.titanOne(fontSize: 20, color: Colors.blue),
            ),
          ),
          Positioned(
            bottom: 180,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Selectionpage()),
                  );
                },
                child: Text('                  Lets Go                    '),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
