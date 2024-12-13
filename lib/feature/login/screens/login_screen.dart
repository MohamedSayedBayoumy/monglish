import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/constants/app_colors.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/utils/enums.dart';
import '../../../common/utils/utils.dart';
import '../../../common/widgets/custom_button.dart';
import '../../../common/widgets/custom_padding.dart';
import '../controller/login_controller.dart';
import '../widgets/card_form.dart';
import '../widgets/form_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "/login";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.blue,
      body: SafeArea(
        child: CustomPaddingAndScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppUtils.handleUseAssetImage(
                AppImages.imagesLogo,
              ),
              const SizedBox(
                height: 20.0,
              ),
              GetBuilder<LoginController>(
                builder: (controller) {
                  return CardFormWidget(
                    child: Column(
                      children: [
                        FormWidget(
                          controller: controller,
                        ),
                        const SizedBox(height: 20.0),
                        if (controller.status == Status.loading) ...[
                          const CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 1,
                            strokeCap: StrokeCap.round,
                          )
                        ] else ...[
                          CustomButton(
                            text: "Login",
                            onPressed: controller.isEnabledFiled == true
                                ? () async {
                                    controller.login(context);
                                  }
                                : () {},
                          ),
                        ]
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
