import 'package:flutter/material.dart';
import '../../../common/constants/app_fonts.dart';
import '../../../common/utils/enums.dart';
import '../../../common/utils/utils.dart';
import '../../../common/widgets/custom_text_filed.dart';
import '../controller/login_controller.dart';

class FormWidget extends StatelessWidget {
  final LoginController controller;
  const FormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Email",
            style: AppStyles.styleMedium18.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10.0),
          CustomTextField(
            controller: controller.emailController,
            hinText: "Enter your email address",
            enabled: controller.isEnabledFiled,
            valid: (p0) {
              return AppUtils.checkInput(
                p0.toString(),
                FiledType.email,
              );
            },
          ),
          const SizedBox(height: 25.0),
          Text(
            "Password",
            style: AppStyles.styleMedium18.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 10.0),
          CustomTextField(
            obscureText: controller.obscureText,
            controller: controller.passwordController,
            hinText: "Enter your password",
            enabled: controller.isEnabledFiled,
            valid: (p0) {
              return AppUtils.checkInput(
                p0.toString(),
                FiledType.password,
              );
            },
            suffix: IconButton(
              onPressed: () {
                controller.updateObscureText();
              },
              icon: Icon(
                controller.obscureText == true
                    ? Icons.visibility_outlined
                    : Icons.visibility_off_outlined,
                color: controller.obscureText == true
                    ? Colors.white
                    : Colors.white.withOpacity(.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
