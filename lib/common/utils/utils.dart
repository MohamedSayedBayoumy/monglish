import 'dart:convert';

import '../../data/models/dashboard_response_model.dart';
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
        id: 9999,
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

  static DashBoardModel dashBoardModel = DashBoardModel(
    message: "Operation successful",
    status: "success",
    data: Data(
      level: Level(
        id: 1,
        code: "L001",
        fieldId: 10,
        order: 1,
        name: "Beginner Level",
        notes: "This is the starting level",
        removed: 0,
        searchText: "Beginner Level Search Text",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        pivot: LevelPivot(
          userId: 123,
          levelId: 1,
        ),
        field: School(
          id: 101,
          code: "SCH001",
          parentId: null,
          nextId: null,
          order: 1,
          name: "Sample School",
          nameLocal: "مدرسة نموذجية",
          rootId: null,
          type: 1,
          removed: 0,
          searchText: "School Search Text",
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          root: null,
        ),
      ),
      school: School(
        id: 101,
        code: "SCH001",
        parentId: null,
        nextId: null,
        order: 1,
        name: "Sample School",
        nameLocal: "مدرسة نموذجية",
        rootId: null,
        type: 1,
        removed: 0,
        searchText: "School Search Text",
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
        root: null,
      ),
      packageClubs: [
        PackageClub(
          clubTypeId: 1,
          delClubId: 10,
          count: 5,
          name: "Chess Club",
        ),
        PackageClub(
          clubTypeId: 2,
          delClubId: 20,
          count: 3,
          name: "Robotics Club",
        ),
      ],
    ),
  );
}
