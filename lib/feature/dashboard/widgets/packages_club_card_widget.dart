import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_fonts.dart';
import '../../../common/constants/app_images.dart';

class PackagesClubCardWidget extends StatelessWidget {
  const PackagesClubCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 18,
          backgroundColor: AppColors.orange,
          child: const CircleAvatar(
            radius: 16,
            backgroundImage: AssetImage(AppImages.testImage),
          ),
        ),
        const SizedBox(width: 5.0),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Reading Club",
                style: AppStyles.styleMedium18,
              ),
              SizedBox(height: 3.0),
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        "Available 4000",
                        style: AppStyles.styleRegular15,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Expanded(
                    child: FittedBox(
                      child: Text(
                        "Available 4000",
                        style: AppStyles.styleRegular15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
