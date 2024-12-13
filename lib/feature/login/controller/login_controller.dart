import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/functions/snack_bars.dart';
import '../../../common/utils/enums.dart';
import '../../../data/models/params_model/login_param_model.dart';
import '../../../data/reposity_pattern/login_api.dart';
import '../../bottom_navigation_bar.dart';

class LoginController extends GetxController {
  final AuthenticationUseCases? authenticationUseCases;

  LoginController({this.authenticationUseCases});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  bool obscureText = true;

  bool isEnabledFiled = true;

  Status status = Status.loaded;

  updateObscureText() {
    obscureText = (obscureText == true ? false : true);
    update();
  }

  login(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      status = Status.loading;
      isEnabledFiled = false;
      update();
      final result = await authenticationUseCases!.login(
        loginParamModel: LoginParamModel(
            email: emailController.text, password: passwordController.text),
      );
      result.fold(
        (l) {
          status = Status.failure;
          isEnabledFiled = true;
          SnackBars.errorAlert(
            context,
            error: l.listOfFailures == "" ? l.failureMessag : l.listOfFailures,
          );
          update();
        },
        (r) {
          status = Status.loaded;
          update();
          SnackBars.successAlert(context, userName: r.userName);
          Future.delayed(
            const Duration(seconds: 1),
            () {
              Get.offAndToNamed(BottomNavigationBarScreen.routeName);
            },
          );
        },
      );
    }
  }
}
