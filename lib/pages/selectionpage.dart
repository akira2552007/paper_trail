import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Selectionpage extends StatefulWidget {
  const Selectionpage({super.key});

  @override
  State<Selectionpage> createState() => _SelectionpageState();
}

class _SelectionpageState extends State<Selectionpage> {
  Map<String, List<String>> departmentCourses = {
    'Computer Science': ['BCA', 'BTech'],
    'Science': ['BSc'],
  };
  Map<String, List<String>> courseSemesters = {
    'BCA': [
      'Semester 1',
      'Semester 2',
      'Semester 3',
      'Semester 4',
      'Semester 5',
      'Semester 6',
    ],
    'BTech': [
      'Semester 1',
      'Semester 2',
      'Semester 3',
      'Semester 4',
      'Semester 5',
      'Semester 6',
      'Semester 7',
      'Semester 8',
    ],
    'BSc': [
      'Semester 1',
      'Semester 2',
      'Semester 3',
      'Semester 4',
      'Semester 5',
      'Semester 6',
    ],
  };
  String? selectedDepartment;
  String? selectedCourses;
  String? seletedSem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar with collapsible image
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'lib/assets/images/library.jpg', 
                    fit: BoxFit.cover,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.transparent],
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                'Select Your Course',
                style: GoogleFonts.titanOne(color: Colors.white, fontSize: 16),
              ),
              centerTitle: true,
            ),
          ),
          
          SliverFillRemaining(
            hasScrollBody: true,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownButton(
                    hint: const Text('Select Department'),
                    value: selectedDepartment,
                    isExpanded: true,
                    items:
                        departmentCourses.keys.map((String dept) {
                          return DropdownMenuItem(
                            value: dept,
                            child: Text(dept),
                          );
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedDepartment = value;
                        selectedCourses = null;
                      });
                    },
                  ),
                  const SizedBox(height: 40),
                  if (selectedDepartment != null)
                    DropdownButton(
                      hint: const Text('Select Course'),
                      value: selectedCourses,
                      isExpanded: true,
                      items:
                          departmentCourses[selectedDepartment]!.map((
                            String course,
                          ) {
                            return DropdownMenuItem(
                              value: course,
                              child: Text(course),
                            );
                          }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          selectedCourses = value;
                        });
                      },
                    ),
                  SizedBox(height: 40),
                  const SizedBox(height: 40),
                  if (selectedCourses != null)
                    DropdownButton(
                      hint: const Text('Select Semester'),
                      value: seletedSem,
                      isExpanded: true,
                      items:
                          courseSemesters[selectedCourses]!.map((
                            String semester,
                          ) {
                            return DropdownMenuItem(
                              value: semester,
                              child: Text(semester),
                            );
                          }).toList(),
                      onChanged: (String? value) {
                        setState(() {
                          seletedSem = value;
                        });
                      },
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('           Next           '),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
