import 'package:get/get.dart';
import 'package:monglish/common/utils/utils.dart';

import '../../feature/bottom_navigation_bar.dart';
import '../../feature/dashboard/screens/dashboard_screen.dart';
import '../../feature/login/screens/login_screen.dart';
import '../../feature/splace_screen.dart';
import '../binding/dashboard_binding.dart';
import '../binding/login_binding.dart';

List<GetPage> routes = [
  GetPage(
    name: "/",
    page: () => const SplaceScreen(),
    binding: AppUtils.user.token.toString().isEmpty ? null : LoginBinding(),
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
      DashboardBinding(),
    ],
  ),
  GetPage(
    name: "/dash_bord",
    page: () => const DashboardScreen(),
    binding: DashboardBinding(),
  ),
];
