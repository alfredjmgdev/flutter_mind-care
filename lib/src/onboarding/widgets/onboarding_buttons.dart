import 'package:flutter/material.dart';

class OnboardingButtons extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;
  final bool isLastPage;

  const OnboardingButtons({
    Key? key,
    required this.onNext,
    required this.onSkip,
    this.isLastPage = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onNext,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 14, 190, 128),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          ),
          child: Text(isLastPage ? 'Get Started' : 'Next'),
        ),
        if (!isLastPage)
          TextButton(
            onPressed: onSkip,
            child: const Text('Skip'),
          ),
      ],
    );
  }
}
