import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/widgets/custom_base_user_info.dart';
import 'dashboard_container_widget.dart';
import 'row_details_user_info_widget.dart';

class UserInfoCardWidget extends StatelessWidget {
  const UserInfoCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DashboardContainerWidget(
      backgroundColor: AppColors.blueAccent,
      child: const Column(
        children: [
          CustomBaseUserInfo(
            raduis: 30,
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.phone,
                      value: "+201114205280",
                    ),
                    SizedBox(height: 10.0),
                    RowDetailsUserInfoCardWidget(
                      icon: Icons.email,
                      value: "mohamedSayed@gmail.com",
                      addFittedBox: true,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                  child: Column(
                children: [
                  RowDetailsUserInfoCardWidget(
                    icon: Icons.calendar_month_outlined,
                    value: "13/12/2024",
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      RowDetailsUserInfoCardWidget(
                        icon: Icons.language_outlined,
                        value: "Egypt",
                      ),
                      SizedBox(width: 10.0),
                      RowDetailsUserInfoCardWidget(
                        icon: Icons.report_gmailerrorred_rounded,
                        value: "male",
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
