import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Books extends StatelessWidget {
  final String course;
  final String semester;

  const Books({super.key, required this.course, required this.semester});

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

    
    if (course == 'BCA' && semester == 'Semester 1') {
      bookWidgets = [
        _bookTile(
          'Computer Fundamentals',
          'https://drive.google.com/drive/folders/130Sv8KfEEVgmjYFJgTpP3Z97N4TaVtNo?usp=sharing',
        ),
        _bookTile(
          'ANCI C',
          'https://drive.google.com/file/d/1CFhNmBSBrZmx58mdsd_rpYretcGHf8e0/view?usp=sharing',
        ),
        _bookTile(
          'Office Automation Tools',
          'https://drive.google.com/file/d/1_bRxdfW3r9DT9CuiKRaGyk78y3gawkWh/view?usp=sharing',
        ),
      ];
    } else if (course == 'BCA' && semester == 'Semester 2') {
      bookWidgets = [
        _bookTile(
          'Digital Electronics',
          'https://drive.google.com/drive/folders/1zQrsHIFRgsPLxAMgM3YNZfuQ9ENzU_EF?usp=sharing',
        ),
        _bookTile(
          'Communicative English',
          'https://drive.google.com/file/d/1r2ysmntru3W85NQyUm5KHa8KDtnKEu99/view?usp=sharing',
        ),
      ];
    } else {
      bookWidgets = [
        Center(child: Text('No books available for $course, $semester')),
      ];
    }

    return Scaffold(
      // appBar: AppBar(title: Text('$course - $semester Books')),
      body: ListView(padding: const EdgeInsets.all(16), children: bookWidgets),
    );
  }

  Widget _bookTile(String title, String url) {
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
