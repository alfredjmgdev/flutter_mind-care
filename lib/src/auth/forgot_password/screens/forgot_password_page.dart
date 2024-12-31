import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../widgets/forgot_password_form.dart';
import '../../signup/widgets/auth_header.dart';
import '../../signup/widgets/auth_background.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

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
                      IconButton(
                        alignment: Alignment.centerLeft,
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(height: 24),
                      const AuthHeader(
                        title: 'Forgot Password?',
                        subtitle:
                            'Enter your email address to reset your password',
                      ),
                      const SizedBox(height: 32),
                      const ForgotPasswordForm(),
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
