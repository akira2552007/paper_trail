import 'package:flutter/material.dart';

class Pyq extends StatefulWidget {
  const Pyq({super.key});

  @override
  State<Pyq> createState() => _PyqState();
}

class _PyqState extends State<Pyq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Books')),
      body: Container(color: Colors.green),
    );
  }
}
