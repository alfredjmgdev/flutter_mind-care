import 'package:flutter/material.dart';

class AuthHeader extends StatelessWidget {
  final String? title;
  final String? subtitle;

  const AuthHeader({
    super.key,
    this.title = 'Join us today!',
    this.subtitle =
        'You can search course, apply course and find\nscholarship for abroad studies',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title!,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subtitle!,
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        ),
      ],
    );
  }
}
