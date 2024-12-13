import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monglish/common/utils/utils.dart';
import '../../../common/functions/snack_bars.dart';
import '../../../common/services/local_storage.dart';
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
        (r) async {
          log("${r.toMap()}");
          SnackBars.successAlert(context, userName: r.userName);
          AppUtils.user = r;
          status = Status.loaded;
          update();
          String jsonString = jsonEncode(r.toMap());
          await SecureLocalStorageService.writeSecureData(
            SecureLocalStorageService.userKey,
            jsonString,
          );

          Future.delayed(
            const Duration(milliseconds: 600),
            () {
              Get.offAndToNamed(BottomNavigationBarScreen.routeName);
            },
          );
        },
      );
    }
  }
}
