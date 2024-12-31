import 'package:flutter/material.dart';

class ProfileMenuList extends StatelessWidget {
  const ProfileMenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: const Color.fromARGB(255, 32, 178, 170),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            _buildMenuItem(
              icon: Icons.favorite_border,
              title: 'My Saved',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.calendar_today_outlined,
              title: 'Appointmnet',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.payment_outlined,
              title: 'Payment Method',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.question_answer_outlined,
              title: 'FAQs',
              onTap: () {},
            ),
            _buildMenuItem(
              icon: Icons.logout,
              title: 'Logout',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    final bool isLogout = title == 'Logout';
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFE7F9F7),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color:
              isLogout ? Colors.red : const Color.fromARGB(255, 32, 178, 170),
          size: 20,
        ),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.black87,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Colors.grey[400],
      ),
      onTap: onTap,
    );
  }
}
