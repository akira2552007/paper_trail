import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  final String course;
  final String semester;
  const MainPage({super.key, required this.course, required this.semester});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  int myindex = 0;
  @override
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
      body: Container(child: Center()),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
        currentIndex: myindex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),

            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
            backgroundColor: Colors.redAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note),
            label: 'Notes',
            backgroundColor: Colors.grey,
          ),
        ],
      ),
    );
  }
}
