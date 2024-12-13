import 'package:get/get.dart';

import '../../feature/bottom_navigation_bar.dart';
import '../../feature/dashbord/screens/dashbord_screen.dart';
import '../../feature/login/screens/login_screen.dart';
import '../../feature/splace_screen.dart';
import '../binding/dashbord_binding.dart';
import '../binding/login_binding.dart';

List<GetPage> routes = [
  GetPage(
    name: "/",
    page: () => const SplaceScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: "/login",
    page: () => const LoginScreen(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: "/bottom_navigation",
    page: () => const BottomNavigationBarScreen(),
    bindings: [
      DashbordBinding(),
    ],
  ),
  GetPage(
    name: "/dash_bord",
    page: () => const DashbordScreen(),
    binding: DashbordBinding(),
  ),
];
