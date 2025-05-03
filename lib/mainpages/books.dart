import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  final String course;
  final String semester;

  // Constructor to receive course and semester
  const Books({super.key, required this.course, required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Text("Here are the books for $course in $semester."),
      ),
    );
  }
}
