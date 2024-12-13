import 'package:flutter/material.dart';

import '../common/constants/app_colors.dart';
import '../common/constants/app_fonts.dart';
import 'dashbord/screens/dashbord_screen.dart';
import 'drawer/drawer_screen.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  static const String routeName = "/bottom_navigation";

  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  int currentIndex = 1;
  PageController pageController = PageController();

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (value) {
          currentIndex = value;
          setState(() {});
        },
        children: const [
          DashbordScreen(),
        ],
      ),
      drawer: const DrawerScreen(),
      bottomNavigationBar: currentIndex != 0
          ? BottomNavigationBar(
              backgroundColor: Colors.white,
              elevation: 20.0,
              currentIndex: currentIndex,
              onTap: (value) {
                if (value == 0) {
                  _scaffoldKey.currentState!.openDrawer();
                  return;
                }
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
            )
          : null,
    );
  }
}
