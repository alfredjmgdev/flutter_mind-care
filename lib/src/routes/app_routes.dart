import 'package:flutter/material.dart';
import '../auth/forgot_password/screens/forgot_password_page.dart';
import '../auth/forgot_password/screens/reset_password_success_page.dart';
import '../auth/signup/screens/signup_success_page.dart';
import '../home/screens/home_page.dart';
import '../auth/signup/screens/signup_page.dart';
import '../auth/login/screens/login_page.dart';
import '../onboarding/screens/onboarding_page.dart';
import '../user/chat/screens/user_chat_messages_page.dart';
import '../user/home/screens/user_home_page.dart';
import '../user/profile/screens/user_profile_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const MyHomePage(),
    '/signup': (context) => const SignupPage(),
    '/signup-success': (context) => const SignupSuccessPage(),
    '/login': (context) => const LoginPage(),
    '/forgot-password': (context) => const ForgotPasswordPage(),
    '/reset-password-success': (context) => const ResetPasswordSuccessPage(),
    '/onboarding': (context) => const OnboardingPage(),
    '/user-home': (context) => const UserHomePage(),
    '/user-chat-messages': (context) => const UserChatMessagesPage(),
    '/user-profile': (context) => const UserProfilePage(),
  };
}
