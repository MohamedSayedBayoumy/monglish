import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/app_images.dart';
import '../utils/utils.dart';

class CustomBaseUserInfo extends StatelessWidget {
  final double raduis;
  final Color? fontColor;
  const CustomBaseUserInfo({super.key, required this.raduis, this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: raduis,
          backgroundColor: AppColors.orange,
          child: CircleAvatar(
            radius: raduis - 2,
            backgroundImage: const AssetImage(AppImages.imagesTestImage),
          ),
        ),
        const SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  AppUtils.user.name!,
                  style: AppStyles.styleRegular18.copyWith(
                    color: fontColor ?? Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                AppUtils.user.userId.toString(),
                style: AppStyles.styleRegular15
                    .copyWith(color: const Color(0xff68738d)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
