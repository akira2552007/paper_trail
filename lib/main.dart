import 'package:flutter/material.dart';
import 'package:paper_trail/pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Splashscreen());
  }
}
