import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAssetsImage extends StatelessWidget {
  final String imagePath;
  final double? width, height;
  const CustomAssetsImage({
    super.key,
    required this.imagePath,
    this.width = 20,
    this.height = 20,
  });

  @override
  Widget build(BuildContext context) {
    if (imagePath.toString().endsWith("svg")) {
      return SvgPicture.asset(imagePath);
    } else {
      return Image.asset(
        imagePath,
        width: width,
        height: height,
      );
    }
  }
}
