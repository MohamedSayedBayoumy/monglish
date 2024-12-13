import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';

class CustomButton extends StatelessWidget {
  final String? text;
  final void Function()? onPressed;
  const CustomButton({
    super.key,
    this.text,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: const WidgetStatePropertyAll(10.0),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(
                color: AppColors.blue,
              ),
            ),
          ),
          backgroundColor: WidgetStatePropertyAll(
            AppColors.blue,
          ),
        ),
        child: Text(
          text ?? "",
          style: AppStyles.styleMedium18.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
