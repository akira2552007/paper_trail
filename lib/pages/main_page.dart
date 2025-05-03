import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:paper_trail/mainpages/books.dart';
import 'package:paper_trail/mainpages/notes.dart';
import 'package:paper_trail/mainpages/pyq.dart';

class MainPage extends StatefulWidget {
  final String course;
  final String semester;
  const MainPage({super.key, required this.course, required this.semester});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int myindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          '${widget.course} - ${widget.semester}',
          textAlign: TextAlign.center,
          style: GoogleFonts.titanOne(color: Colors.white),
        ),
      ),
      body: getBodyContent(), 
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
            icon: Icon(Icons.book_online),
            label: 'Syllabus',
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
          BottomNavigationBarItem(
            icon: Icon(Icons.question_answer),
            label: 'Pyqs',
            backgroundColor: Colors.yellow,
          ),
        ],
      ),
    );
  }

 
  Widget getBodyContent() {
    if (myindex == 0) {
      return Center(child: Text("Syllabus Coming Soon")); 
    } else if (myindex == 1) {
      return Books(course: widget.course, semester: widget.semester); // Show Books
    } else if (myindex == 2) {
      return Notes(course: widget.course, semester: widget.semester); // Show Notes
    } else if (myindex == 3) {
      return Pyq(course: widget.course, semester: widget.semester);   // Show Pyqs
    } else {
      return Center(child: Text("Unknown Tab"));
    }
  }
}
