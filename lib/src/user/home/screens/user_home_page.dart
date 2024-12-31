import 'package:flutter/material.dart';
import '../shared/widgets/custom_bottom_nav_bar.dart';
import '../widgets/home_header.dart';
import '../widgets/search_bar.dart';
import '../widgets/services_grid.dart';
import '../widgets/promo_banner.dart';
import '../widgets/top_doctors_section.dart';

class UserHomePage extends StatelessWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HomeHeader(),
              SizedBox(height: 20),
              CustomSearchBar(),
              SizedBox(height: 20),
              ServicesGrid(),
              SizedBox(height: 20),
              SizedBox(height: 20),
              PromoBanner(),
              TopDoctorsSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0),
    );
  }
}
