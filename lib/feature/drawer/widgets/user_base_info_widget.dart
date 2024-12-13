import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_fonts.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/utils/utils.dart';

class UserBaseInfoWidget extends StatelessWidget {
  const UserBaseInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: BorderDirectional(
          top: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white),
          start: BorderSide(color: Colors.white),
        ),
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(50),
          bottomStart: Radius.circular(50),
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: AppUtils.avatarRadius,
            backgroundColor: AppColors.orange,
            child: const CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(AppImages.testImage),
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
                    "Welcome Mohamed Sayed Bayoumy",
                    style: AppStyles.styleRegular18
                        .copyWith(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 10.0),
                Text(
                  "20152",
                  style: AppStyles.styleRegular15
                      .copyWith(color: const Color(0xff68738d)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
