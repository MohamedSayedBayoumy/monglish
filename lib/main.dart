import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'common/routes/routes.dart';
import 'package:device_preview/device_preview.dart';

import 'common/utils/utils.dart';
import 'feature/splace_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppUtils.getUserData();
  // runApp(const MyApp());

  runApp(
    DevicePreview(
      builder: (context) => const MyApp(),
    ),
  );

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: routes,
      theme: ThemeData(
        useMaterial3: false,
        fontFamily: "Inter",
      ),
      home: const SplaceScreen(),
    );
  }
}
