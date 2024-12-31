import 'package:flutter/material.dart';
import '../widgets/login_form.dart';
import '../../signup/widgets/auth_background.dart';
import '../widgets/login_header.dart';
import '../widgets/login_footer.dart';
import '../../signup/widgets/social_login_buttons.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const AuthBackground(),
          SafeArea(
            child: LayoutBuilder(
              builder: (context, constraints) {
                final Widget content = SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 24),
                      const LoginHeader(),
                      SizedBox(height: 32),
                      LoginForm(),
                      SizedBox(height: 24),
                      SocialLoginButtons(),
                      SizedBox(height: 24),
                      LoginFooter(),
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
                      child: content,
                    ),
                  );
                }

                return content;
              },
            ),
          ),
        ],
      ),
    );
  }
}
