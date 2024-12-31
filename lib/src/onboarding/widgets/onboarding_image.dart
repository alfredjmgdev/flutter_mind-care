import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class OnboardingImage extends StatelessWidget {
  final String imagePath;

  const OnboardingImage({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // For web, use mobile sizing if screen width < 1024px
    final size = kIsWeb
        ? (screenWidth < 1024 ? screenWidth * 0.8 : 320.0)
        : screenWidth * 0.8;
    final fullImagePath = 'assets/$imagePath';

    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: ClipOval(
        child: FutureBuilder(
          future: kIsWeb
              ? precacheImage(NetworkImage(fullImagePath), context)
              : precacheImage(AssetImage(fullImagePath), context),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return kIsWeb
                  ? Image.network(
                      fullImagePath,
                      fit: BoxFit.cover,
                    )
                  : Image.asset(
                      fullImagePath,
                      fit: BoxFit.cover,
                    );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
