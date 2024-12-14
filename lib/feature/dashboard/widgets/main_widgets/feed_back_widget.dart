import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_fonts.dart';
import '../../../../common/utils/utils.dart';
import '../dashboard_container_widget.dart';
import '../feed_back_header_widget.dart';

class FeedBackWidget extends StatelessWidget {
  const FeedBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      delayFadeWidget: AppUtils.handleDelayedFadeWidget(6),
      backgroundColor: AppColors.blueAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Feedback",
            style: AppStyles.styleRegular18,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) => const DashboardContainerWidget(
              backgroundColor: Colors.white,
              child: Column(
                children: [
                  FeedBackHeaderWidget(),
                  SizedBox(height: 5.0),
                  Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book")
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
