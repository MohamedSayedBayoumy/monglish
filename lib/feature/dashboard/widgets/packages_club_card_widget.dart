import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_fonts.dart';
import '../../../common/constants/app_images.dart';
import '../../../data/models/dashboard_response_model.dart';

class PackagesClubCardWidget extends StatelessWidget {
  final PackageClub packageClub;
  const PackagesClubCardWidget({super.key, required this.packageClub});

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
            backgroundImage: AssetImage(AppImages.imagesTestImage),
          ),
        ),
        const SizedBox(width: 5.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    packageClub.name!,
                    style: AppStyles.styleMedium18,
                  ),
                ),
              ),
              const SizedBox(height: 3.0),
              Row(
                children: [
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Available ${packageClub.count!}",
                        style: AppStyles.styleRegular15,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Token ${packageClub.delClubId!}",
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
