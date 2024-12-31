import 'package:flutter/material.dart';

class LoginSignupModal extends StatelessWidget {
  const LoginSignupModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, bottom: 40),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 12),
              height: 4,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 33, 150, 228),
              ),
              onPressed: () {
                // Handle login with Google
                Navigator.of(context).pop(); // Close the modal
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.g_mobiledata_sharp, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Continue with Google',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                // Handle login with Apple
                Navigator.of(context).pop(); // Close the modal
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.apple),
                  SizedBox(width: 8),
                  Text('Continue with Apple'),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 190, 128),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the modal
                Navigator.pushNamed(
                    context, '/login'); // Navigate to login page
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.email, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Continue with Email',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 14, 190, 128),
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Close the modal
                Navigator.pushNamed(
                    context, '/signup'); // Navigate to signup page
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.person_add, color: Colors.white),
                  SizedBox(width: 8),
                  Text('Signup', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// New function to show the modal with a slower animation
void showLoginSignupModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 89, 86, 86),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const LoginSignupModal(),
        ),
      );
    },
    transitionAnimationController: AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: Navigator.of(context),
    ),
  );
}
