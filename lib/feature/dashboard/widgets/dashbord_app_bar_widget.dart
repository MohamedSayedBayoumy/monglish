import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/widgets/custom_deep_blue_color_container.dart';

class DashBordAppBarWidget extends StatelessWidget {
  const DashBordAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomDeepBlueColorContainer(
      height: 140.0,
      padding: const EdgeInsetsDirectional.only(
        start: 10.0,
        end: 10.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(
            Icons.notifications_none_rounded,
            color: Colors.white,
            size: 30.0,
          ),
          const SizedBox(width: 8.0),
          const Icon(
            Icons.search,
            color: Colors.white,
            size: 30.0,
          ),
          const Spacer(),
          CircleAvatar(
            radius: 25,
            backgroundColor: AppColors.orange,
            child: const CircleAvatar(
              radius: 23.0,
              backgroundImage: AssetImage(AppImages.imagesTestImage),
            ),
          ),
        ],
      ),
    );
  }
}
