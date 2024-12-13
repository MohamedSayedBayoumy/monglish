import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/constants/app_fonts.dart';
import '../dashboard_container_widget.dart';
import '../row_details_user_info_widget.dart';

class SchoolInformationWidget extends StatelessWidget {
  const SchoolInformationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      backgroundColor: AppColors.greenWithOpicty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Junior 20",
            style: AppStyles.styleMedium18,
          ),
          const SizedBox(height: 4.0),
          Text(
            "LG Kids - Juniros - Level 2",
            style: AppStyles.styleRegular15.copyWith(color: AppColors.grey),
          ),
          const SizedBox(height: 15.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.calendar_month,
                      iconColor: AppColors.green,
                      value: "+201114205280",
                      addFittedBox: true,
                    ),
                    const SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.person,
                      iconColor: AppColors.green,
                      value: "mohamedSayed@gmail.com",
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
                      icon: Icons.person,
                      addFittedBox: true,
                      value: "13/12/2024",
                      iconColor: AppColors.green,
                    ),
                    const SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      addFittedBox: true,
                      icon: Icons.done,
                      value: "13/12/2024",
                      iconColor: AppColors.green,
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
