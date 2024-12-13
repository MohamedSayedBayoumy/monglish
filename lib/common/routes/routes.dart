import 'package:get/get.dart';

import '../../feature/home/screens/home_screen.dart';
import '../../feature/login/screens/login_screen.dart';
import '../../feature/splace_screen.dart';
import '../binding/home_binding.dart';
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
    name: "/home",
    page: () => const HomeScreen(),
    binding: HomeBinding(),
  ),
];
