import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_fonts.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/widgets/custom_assets_image.dart';

class RewardCardContentWidget extends StatelessWidget {
  const RewardCardContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: AppColors.deepYellow,
              borderRadius: BorderRadius.circular(3.0)),
          child: const CustomAssetsImage(
            imagePath: AppImages.imagesHandshake,
          ),
        ),
        const SizedBox(width: 5.0),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "Mohamed Sayed",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      AppStyles.styleRegular15.copyWith(color: AppColors.grey),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  "12/12/2024",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      AppStyles.styleRegular15.copyWith(color: AppColors.grey),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
