import 'package:flutter/material.dart';
import 'package:paper_trail/pages/intropages/intropageone.dart';
import 'package:paper_trail/pages/intropages/intropagetwo.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Introduction extends StatefulWidget {
  const Introduction({super.key});

  @override
  State<Introduction> createState() => _IntroductionState();
}

class _IntroductionState extends State<Introduction> {
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [Intropageone(), Intropagetwo()],
          ),
          Container(
            alignment: Alignment(0, 0.8),
            child: SmoothPageIndicator(controller: _controller, count: 2),
          ),
        ],
      ),
    );
  }
}
