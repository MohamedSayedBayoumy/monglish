import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/utils/utils.dart';

class OragneContainerWidget extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  const OragneContainerWidget({super.key, required this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      color: AppColors.orange,
      alignment: AlignmentDirectional.topCenter,
      padding: padding,
      child: SizedBox(
        height: (AppUtils.avatarRadius * 2) + 2.5,
        // (AppUtils.avatarRadius * 2) => height twice the radius
        // 2.5 is padding related of user base info container
        child: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.close_rounded,
            size: 35.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
