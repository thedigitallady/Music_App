import 'package:engr_test2/page1.dart';
import 'package:engr_test2/page2.dart';
import 'package:engr_test2/page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView(
        controller: _pageController,
        children: const [
          Page1(),
          Page2(),
          Page3(),
        ],
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(left: 160, bottom: 20),
        child: SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotHeight: 9,
            dotWidth: 15,
            dotColor: Colors.grey,
            activeDotColor: Colors.black,
          ),
        ),
      ),
    );
  }
}
