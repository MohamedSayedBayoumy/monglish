import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Widget? suffix;
  final bool suffixIcon;
  final String? hinText;
  final Color? hintTextColor;
  final bool obscureText;
  final String? Function(String?)? valid;
  final String? Function(String?)? onChange;
  final void Function()? onTap;
  final bool? enabled;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    required this.controller,
    this.suffix,
    this.inputFormatters,
    this.hintTextColor,
    this.obscureText = false,
    this.suffixIcon = false,
    this.onChange,
    this.onTap,
    required this.hinText,
    this.valid,
    this.enabled,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText == false ? false : true,
      onChanged: onChange,
      onTap: onTap,
      enabled: enabled,
      validator: valid,
      controller: controller,
      style: AppStyles.styleRegular18.copyWith(color: Colors.white),
      decoration: InputDecoration(
        filled: false,
        suffixIcon: suffix,
        hintText: hinText,
        hintStyle:
            AppStyles.styleRegular18.copyWith(color: const Color(0xff838383)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.blue,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: AppColors.grey),
        ),
      ),
    );
  }
}
