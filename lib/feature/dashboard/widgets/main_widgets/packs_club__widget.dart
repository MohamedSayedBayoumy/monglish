import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_fonts.dart';
import '../../../../common/utils/utils.dart';
import '../../../../data/models/dashboard_response_model.dart';
import '../dashboard_container_widget.dart';
import '../packages_club_card_widget.dart';

class PackagesClubWidget extends StatelessWidget {
  final List<PackageClub>? packageClubs;
  const PackagesClubWidget({super.key, this.packageClubs});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      delayFadeWidget: AppUtils.handleDelayedFadeWidget(4),
      backgroundColor: AppColors.orangeOpicty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Packages Club",
            style: AppStyles.styleRegular18,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(top: 5.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 16 / 4,
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 5.0,
            ),
            itemCount: packageClubs!.length,
            itemBuilder: (context, index) => PackagesClubCardWidget(
              packageClub: packageClubs![index],
            ),
          ),
        ],
      ),
    );
  }
}
