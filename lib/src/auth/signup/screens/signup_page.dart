import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../widgets/auth_header.dart';
import '../widgets/social_login_buttons.dart';
import '../widgets/signup_form.dart';
import '../widgets/auth_footer.dart';
import '../widgets/auth_background.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackground(),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final Widget content = Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24),
                      const AuthHeader(),
                      const SizedBox(height: 32),
                      const SocialLoginButtons(),
                      const SizedBox(height: 32),
                      const SignupForm(),
                      const SizedBox(height: 24),
                      const AuthFooter(),
                    ],
                  ),
                );

                if (kIsWeb) {
                  final double contentWidth = constraints.maxWidth > 600
                      ? constraints.maxWidth * 0.5
                      : constraints.maxWidth;

                  return Center(
                    child: Container(
                      constraints: const BoxConstraints(
                        maxWidth: 600,
                      ),
                      width: contentWidth,
                      child: SingleChildScrollView(
                        child: content,
                      ),
                    ),
                  );
                }

                return SingleChildScrollView(
                  child: content,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
