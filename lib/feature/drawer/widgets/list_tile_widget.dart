import 'package:flutter/material.dart';

import '../../../common/constants/app_fonts.dart';

class ListTileWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  const ListTileWidget({
    super.key,
    required this.iconData,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minLeadingWidth: 0.0,
      horizontalTitleGap: 8.0,
      leading: Icon(
        iconData,
        size: 25.0,
        color: Colors.white,
      ),
      title: Text(
        title,
        style: AppStyles.styleRegular15.copyWith(color: Colors.white),
      ),
    );
  }
}
