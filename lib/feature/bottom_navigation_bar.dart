import 'package:flutter/material.dart';

import '../common/constants/app_colors.dart';
import '../common/constants/app_fonts.dart';
import 'dashbord/screens/dashbord_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const String routeName = "/bottom_navigation";

  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
        children: const [
          DashbordScreen(),
          DashbordScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 20.0,
        currentIndex: currentIndex,
        onTap: (value) {
          pageController.animateToPage(value,
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear);
        },
        selectedLabelStyle:
            AppStyles.styleRegular15.copyWith(color: AppColors.grey),
        unselectedFontSize: 15,
        selectedItemColor: AppColors.orange,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
        ],
      ),
    );
  }
}
