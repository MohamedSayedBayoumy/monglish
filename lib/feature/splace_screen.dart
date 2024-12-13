import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common/constants/app_colors.dart';
import '../common/constants/app_images.dart';
import 'package:animate_do/animate_do.dart';

import '../common/utils/utils.dart';
import '../common/widgets/custom_assets_image.dart';
import 'bottom_navigation_bar.dart';
import 'login/screens/login_screen.dart';

class SplaceScreen extends StatelessWidget {
  static const String routeName = "/splash";

  const SplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Center(
        child: FadeIn(
          duration: const Duration(seconds: 3),
          onFinish: (v) {
            if (AppUtils.user.token!.isNotEmpty) {
              Get.offAndToNamed(BottomNavigationBarScreen.routeName);
            } else {
              Get.offAndToNamed(LoginScreen.routeName);
            }
          },
          child: const CustomAssetsImage(
            imagePath: AppImages.imagesLogo,
          ),
        ),
      ),
    );
  }
}
