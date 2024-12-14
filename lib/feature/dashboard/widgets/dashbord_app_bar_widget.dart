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
          Stack(
            children: [
              const Icon(
                Icons.notifications_none_sharp,
                color: Colors.white,
                size: 40.0,
              ),
              Positioned(
                top: 7.0,
                right: 10.0,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.red.shade700,
                  ),
                ),
              )
            ],
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
