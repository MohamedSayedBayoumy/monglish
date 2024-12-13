import 'dart:convert';

import '../../data/models/user_model.dart';
import '../services/local_storage.dart';
import 'enums.dart';

abstract class AppUtils {
  static UserModel user = UserModel();

  static double avatarRadius = 38;

  static checkInput(String value, FiledType filedType) {
    switch (filedType) {
      case FiledType.email:
        if (value.isEmpty) {
          return "This File is Required";
        }

        const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
            r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
            r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
            r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
            r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
            r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
            r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
        final regex = RegExp(pattern);

        return value.isNotEmpty && !regex.hasMatch(value)
            ? 'Enter a valid email address'
            : null;
      case FiledType.password:
        if (value.isEmpty) {
          return "This File is Required";
        }
    }
  }

  static Future<void> getUserData() async {
    String? jsonString = await SecureLocalStorageService.readSecureData(
      SecureLocalStorageService.userKey,
    );

    if (jsonString != "No data found!") {
      Map<String, dynamic> userMap = jsonDecode(jsonString);

      user = UserModel.fromJsonOfLocalStorage(userMap);
    } else {
      user = UserModel(
        userId: 9999,
        country: "Egypt",
        email: "MohamedSayed@gmail.com",
        gender: "Male",
        mobile: "+201114205280",
        nationality: "Egypt",
        name: "Mohamed Sayed",
        token: "",
      );
    }
  }
}
