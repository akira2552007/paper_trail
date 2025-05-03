import 'package:flutter/material.dart';

class Pyq extends StatelessWidget {
  final String course;
  final String semester;

  // Constructor to receive course and semester
  const Pyq({super.key, required this.course, required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Here are the previous year questions for $course in $semester.",
        ),
      ),
    );
  }
}
