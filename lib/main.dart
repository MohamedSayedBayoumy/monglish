import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common/routes/routes.dart';
import 'feature/bottom_navigation_bar.dart';
import 'feature/dashbord/screens/dashbord_screen.dart';

void main() {
  runApp(const MyApp());
  // runApp(
  //   DevicePreview(
  //     builder: (context) => const MyApp(),
  //   ),
  // );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "Inter",
      ),
      home: const BottomNavigationBarScreen(),
    );
  }
}
