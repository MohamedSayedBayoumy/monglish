import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

abstract class SnackBars {
  static successAlert(BuildContext context, {String? userName}) async {
    await Flushbar(
      duration: const Duration(seconds: 3),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: 'Successfully',
      message: 'Welcome $userName',
      icon: const Icon(
        Icons.done,
        size: 28.0,
        color: Color(0xff5ce65c),
      ),
      leftBarIndicatorColor: const Color(0xff5ce65c),
    ).show(context);
  }

  static errorAlert(BuildContext context, {String? error}) async {
    await Flushbar(
      duration: const Duration(seconds: 4),
      margin: const EdgeInsets.all(8),
      borderRadius: BorderRadius.circular(8),
      title: 'Failed',
      message: error,
      icon: const Icon(
        Icons.info,
        size: 28.0,
        color: Color(0xffed2100),
      ),
      leftBarIndicatorColor: const Color(0xffed2100),
    ).show(context);
  }
}
