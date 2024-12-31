import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

import '../widgets/onboarding_buttons.dart';
import '../widgets/onboarding_image.dart';
import '../widgets/onboarding_text.dart';
import '../widgets/onboarding_background.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _pages = [
    {
      'image': 'onboarding-1.jpg',
      'title': 'Find Trusted Doctors',
      'description':
          'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
    },
    {
      'image': 'onboarding-2.jpg',
      'title': 'Easy Appointments',
      'description':
          'Book appointments with your preferred doctors easily and get 24/7 support for any medical consultations.',
    },
    {
      'image': 'onboarding-3.png',
      'title': 'Live Health Tracking',
      'description':
          'Track your health vitals and get personalized insights to maintain a healthy lifestyle with our advanced monitoring system.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const OnboardingBackground(),
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return _buildPage(context, _pages[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildPage(BuildContext context, Map<String, String> pageData) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final Widget content = Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnboardingImage(imagePath: pageData['image']!),
            const SizedBox(height: 20),
            OnboardingText(
              title: pageData['title']!,
              description: pageData['description']!,
            ),
            const SizedBox(height: 30),
            OnboardingButtons(
              isLastPage: _currentPage == _pages.length - 1,
              onNext: () {
                if (_currentPage < _pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                } else {
                  // Navigate to the main app
                  print('Navigating to user home');
                  Navigator.pushReplacementNamed(context, '/user-home');
                }
              },
              onSkip: () {
                print('Navigating to user home');
                Navigator.pushReplacementNamed(context, '/user-home');
              },
            ),
          ],
        );

        if (kIsWeb) {
          return Center(
            child: Container(
              constraints: const BoxConstraints(maxWidth: 480),
              width: constraints.maxWidth * 0.8,
              child: content,
            ),
          );
        }

        return content;
      },
    );
  }
}
