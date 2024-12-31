// lib/src/widgets/custom_button.dart
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;

  const CustomButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    double buttonSize = kIsWeb ? 30 : 20;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 14, 190, 128),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Text(
          'Get Started',
          style: TextStyle(color: Colors.white, fontSize: buttonSize),
        ),
      ),
    );
  }
}
