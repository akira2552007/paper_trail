import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Pyq extends StatefulWidget {
  final String course;
  final String semester;

  const Pyq({super.key, required this.course, required this.semester});

  @override
  State<Pyq> createState() => _PyqState();
}

class _PyqState extends State<Pyq> {
  void _openPDF(String url) async {
    try {
      final Uri uri = Uri.parse(url);
      if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
        debugPrint('Could not launch $url');
      }
    } catch (e) {
      debugPrint('Launch error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> bookWidgets = [];

    if (widget.course == 'BCA' && widget.semester == 'Semester 2') {
      bookWidgets = [
        _pyqTile(
          'Maths',
          'https://drive.google.com/drive/folders/1ArOYQ4j2dU_wzpp8GoSSBe-ODfc7129r?usp=sharing',
        ),
        _pyqTile(
          'DBMS',
          'https://drive.google.com/drive/folders/1sDKVFOuxrSyABG0rczCi-2gYEgOuQLyX?usp=sharing',
        ),
        _pyqTile(
          'Data Structure',
          'https://drive.google.com/drive/folders/1J5FYMAowjI07ojgn-jLD3jQCq9n4tW69?usp=sharing',
        ),
        _pyqTile(
          'Englsih',
          'https://drive.google.com/drive/folders/1JCOoFi4E6q9EZzIvZVhA_R3NDLEPXxrd?usp=sharing',
        ),
        _pyqTile(
          'Digital electronics',
          'https://drive.google.com/drive/folders/14bJDKR3_An3E5QyAeVvQ_tFBZvrJ1dQU?usp=sharing',
        ),
      ];
    } else {
      bookWidgets = [
        Center(
          child: Text(
            'No pyq available for ${widget.course}, ${widget.semester}',
          ),
        ),
      ];
    }

    return Scaffold(
      body: ListView(padding: const EdgeInsets.all(16), children: bookWidgets),
    );
  }

  Widget _pyqTile(String title, String url) {
    return GestureDetector(
      onTap: () => _openPDF(url),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
