import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class HomeContent extends StatelessWidget {
  const HomeContent(
      {super.key,
      required this.opacityAnimation,
      required this.scaleAnimation,
      required this.zoomAnimation});

  final Animation<double> opacityAnimation;
  final Animation<double> scaleAnimation;
  final Animation<double> zoomAnimation;

  @override
  Widget build(BuildContext context) {
    double imageSize = kIsWeb ? 200 : 120;
    double textSize = kIsWeb ? 40 : 30;

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            _buildAnimatedImage(imageSize),
            const SizedBox(height: 16),
            _buildAnimatedText(textSize),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedImage(double size) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: FadeTransition(
        opacity: opacityAnimation,
        child: Image.asset(
          'assets/logo-with-title.png',
          height: size,
          color: const Color.fromARGB(255, 14, 190, 128),
          colorBlendMode: BlendMode.srcIn,
        ),
      ),
    );
  }

  Widget _buildAnimatedText(double size) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: FadeTransition(
        opacity: opacityAnimation,
        child: Text(
          'Mind Care',
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.w500,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ),
    );
  }
}
