import 'package:flutter/material.dart';

class Notes extends StatelessWidget {
  final String course;
  final String semester;

  // Constructor to receive course and semester
  const Notes({super.key, required this.course, required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Center(
        child: Text("Here are the notes for $course in $semester."),
      ),
    );
  }
}
