import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

import '../../../common/constants/app_fonts.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/widgets/custom_assets_image.dart';

class FeedBackHeaderWidget extends StatelessWidget {
  const FeedBackHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAssetsImage(
          imagePath: AppImages.imagesTestImage,
          width: 40,
          height: 40,
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Mohamed Sayed Bayoumy",
                style: AppStyles.styleRegular15,
              ),
              const SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  RatingStars(
                    value: 3,
                    valueLabelVisibility: false,
                    onValueChanged: (v) {},
                    starBuilder: (index, color) => Icon(
                      Icons.star_rate_rounded,
                      color: color,
                    ),
                    starCount: 5,
                    starSize: 20,
                    maxValue: 5,
                    starSpacing: 2,
                    animationDuration: const Duration(milliseconds: 1000),
                    starOffColor: const Color(0xffe7e8ea),
                    starColor: Colors.yellow,
                  ),
                  const SizedBox(width: 40.0),
                  Text(
                    "3",
                    style: AppStyles.styleRegular15
                        .copyWith(color: const Color(0xff68738d)),
                  ),
                ],
              )
            ],
          ),
        ),
        Text(
          "1 day",
          style:
              AppStyles.styleRegular15.copyWith(color: const Color(0xff68738d)),
        ),
      ],
    );
  }
}
