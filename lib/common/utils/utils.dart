import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'enums.dart';

abstract class AppUtils {
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

  static Widget handleUseAssetImage(
    image, {
    double? width = 20,
    double? height = 20,
  }) {
    if (image.toString().endsWith("svg")) {
      return SvgPicture.asset(image);
    } else {
      return Image.asset(
        image,
        width: width,
        height: height,
      );
    }
  }
}
