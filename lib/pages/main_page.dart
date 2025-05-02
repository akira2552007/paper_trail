import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paper_trail/mainpages/books.dart';
import 'package:paper_trail/mainpages/notes.dart';
import 'package:paper_trail/mainpages/pyq.dart';
import 'package:paper_trail/mainpages/syllabus.dart';

class MainPage extends StatefulWidget {
  final String course;
  final String semester;
  const MainPage({super.key, required this.course, required this.semester});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  final PageController _controller = PageController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // FIXED: moved AppBar to appBar slot
        backgroundColor: Colors.blue,
        title: Text(
          '${widget.course} - ${widget.semester}',
          textAlign: TextAlign.center,
          style: GoogleFonts.titanOne(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [Books(), Syllabus(), Pyq(), Notes()],
          ),
        ],
      ),
    );
  }
}
