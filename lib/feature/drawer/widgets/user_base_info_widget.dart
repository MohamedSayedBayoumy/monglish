import 'package:flutter/material.dart';

import '../../../common/utils/utils.dart';
import '../../../common/widgets/custom_base_user_info.dart';

class UserBaseInfoWidget extends StatelessWidget {
  const UserBaseInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: const BoxDecoration(
        color: Colors.transparent,
        border: BorderDirectional(
          top: BorderSide(color: Colors.white),
          bottom: BorderSide(color: Colors.white),
          start: BorderSide(color: Colors.white),
        ),
        borderRadius: BorderRadiusDirectional.only(
          topStart: Radius.circular(50),
          bottomStart: Radius.circular(50),
        ),
      ),
      child: CustomBaseUserInfo(
        raduis: AppUtils.avatarRadius,
      ),
    );
  }
}
