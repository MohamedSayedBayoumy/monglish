import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_fonts.dart';
import '../../../../common/utils/utils.dart';
import '../dashboard_container_widget.dart';
import '../reward_card_content_widget.dart';

class RewardsWidget extends StatelessWidget {
  const RewardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      delayFadeWidget: AppUtils.handleDelayedFadeWidget(5),
      backgroundColor: AppColors.yellow,
      child: Column(
        children: [
          Row(
            children: [
              const Text(
                "Rewards",
                style: AppStyles.styleMedium18,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: LinearProgressIndicator(
                    color: Colors.blue,
                    backgroundColor: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(10),
                    value: 50 / 100,
                  ),
                ),
              )
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 5.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 16 / 9,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
              mainAxisExtent: 110.0,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => DashboardContainerWidget(
              delayFadeWidget: AppUtils.handleDelayedFadeWidget(1),
              addTopPadding: false,
              backgroundColor: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Help Others",
                    style: AppStyles.styleRegular15,
                  ),
                  Expanded(
                    child: Stack(
                      children: [
                        const RewardCardContentWidget(),
                        Positioned(
                          top: 0.0,
                          left: 45,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: AppColors.greenLight,
                            child: const Text(
                              "1",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 12.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
