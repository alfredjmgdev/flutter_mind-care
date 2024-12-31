import 'package:flutter/material.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_menu_list.dart';
import '../../home/shared/widgets/custom_bottom_nav_bar.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.teal[100],
        elevation: 0, // Removes shadow
        toolbarHeight: 0, // Makes the AppBar invisible but extends the color
      ),
      body: SafeArea(
        child: SizedBox.expand(
          child: Column(
            children: const [
              ProfileHeader(),
              ProfileMenuList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 3),
    );
  }
}
