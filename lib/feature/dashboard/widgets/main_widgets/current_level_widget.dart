import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_fonts.dart';
import '../../../../data/models/dashboard_response_model.dart';
import '../dashboard_container_widget.dart';
import '../row_details_user_info_widget.dart';

class CurrentLevelWidget extends StatelessWidget {
  final Level currentlevel;
  const CurrentLevelWidget({super.key, required this.currentlevel});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      backgroundColor: AppColors.opcityPurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Current Level",
            style: AppStyles.styleRegular15,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.picture_as_pdf_rounded,
                      iconColor: AppColors.purple,
                      value: currentlevel.name!,
                      addFittedBox: true,
                    ),
                    const SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.done,
                      iconColor: AppColors.purple,
                      value: "Active",
                      addFittedBox: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  children: [
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.wallet,
                      addFittedBox: true,
                      value: currentlevel.notes!,
                      iconColor: AppColors.purple,
                    ),
                    const SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      addFittedBox: true,
                      icon: Icons.timer,
                      value: "20/12/2024",
                      iconColor: AppColors.purple,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
