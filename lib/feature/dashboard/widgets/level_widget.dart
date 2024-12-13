import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_fonts.dart';
import 'row_details_user_info_widget.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: AppColors.opcityPurple,
            borderRadius: BorderRadius.circular(12.0)),
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
                        value: "+201114205280",
                        addFittedBox: true,
                      ),
                      const SizedBox(height: 10.0),
                      RowDetailsUserInfoCardWidget(
                        icon: Icons.done,
                        iconColor: AppColors.purple,
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
                        icon: Icons.wallet,
                        addFittedBox: true,
                        value: "13/12/2024",
                        iconColor: AppColors.purple,
                      ),
                      const SizedBox(height: 10.0),
                      RowDetailsUserInfoCardWidget(
                        addFittedBox: true,
                        icon: Icons.timer,
                        value: "13/12/2024",
                        iconColor: AppColors.purple,
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
