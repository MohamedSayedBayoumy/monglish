import 'package:flutter/material.dart';

import '../../../../common/constants/app_colors.dart';
import '../../../../common/utils/utils.dart';
import '../../../../common/widgets/custom_base_user_info.dart';
import '../dashboard_container_widget.dart';
import '../row_details_user_info_widget.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      backgroundColor: AppColors.blueAccent,
      child: Column(
        children: [
          const CustomBaseUserInfo(
            raduis: 30,
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.phone,
                      value: AppUtils.user.mobile!,
                    ),
                    const SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.email,
                      value: AppUtils.user.email!,
                      addFittedBox: true,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                  child: Column(
                children: [
                  const RowDetailsUserInfoCardWidget(
                    icon: Icons.calendar_month_outlined,
                    value: "13/12/2024",
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    children: [
                      RowDetailsUserInfoCardWidget(
                        icon: Icons.language_outlined,
                        value: AppUtils.user.nationality!,
                      ),
                      const SizedBox(width: 10.0),
                      RowDetailsUserInfoCardWidget(
                        icon: Icons.report_gmailerrorred_rounded,
                        value: AppUtils.user.gender!,
                      ),
                    ],
                  ),
                ],
              )),
            ],
          )
        ],
      ),
    );
  }
}
