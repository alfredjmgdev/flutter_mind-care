import 'package:flutter/material.dart';

class OnboardingBackground extends StatelessWidget {
  const OnboardingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildGradient(Alignment.topLeft, Alignment.topRight),
        _buildGradient(Alignment.topRight, Alignment.topLeft),
        Positioned(
          top: -100,
          left: -100,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 14, 190, 128).withOpacity(0.3),
            ),
          ),
        ),
        Positioned(
          bottom: -100,
          right: -100,
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 14, 190, 128).withOpacity(0.3),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildGradient(Alignment begin, Alignment end) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 14, 190, 128).withOpacity(0.3),
            Colors.transparent
          ],
          stops: const [0.0, 0.5],
          begin: begin,
          end: end,
        ),
      ),
    );
  }
}
