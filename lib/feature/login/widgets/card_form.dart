import 'package:flutter/material.dart';

import '../../../common/constants/app_colors.dart';

class CardFormWidget extends StatelessWidget {
  final Widget child;
  const CardFormWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: AppColors.deepBlue,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: child,
    );
  }
}
