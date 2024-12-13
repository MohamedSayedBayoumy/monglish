import 'package:flutter/material.dart';

import '../../common/widgets/custom_deep_blue_color_container.dart';
import 'widgets/list_tile_widget.dart';
import 'widgets/oragne_container_widget.dart';
import 'widgets/user_base_info_widget.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  EdgeInsetsDirectional padding({start}) {
    return EdgeInsetsDirectional.only(
      top: 50,
      start: start ?? 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        children: [
          Expanded(
            child: CustomDeepBlueColorContainer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: padding(),
                      child: const UserBaseInfoWidget(),
                    ),
                    const SizedBox(
                      height: 40.0,
                    ),
                    const ListTileWidget(
                      iconData: Icons.dashboard_outlined,
                      title: "Dashboard",
                    ),
                    const ListTileWidget(
                      iconData: Icons.home_work_rounded,
                      title: "Schools",
                    ),
                    const ListTileWidget(
                      iconData: Icons.people_alt,
                      title: "Classes",
                    ),
                    const ListTileWidget(
                      iconData: Icons.video_camera_front_outlined,
                      title: "Clubs",
                    ),
                    const ListTileWidget(
                      iconData: Icons.wallet,
                      title: "Wallet",
                    ),
                    const ListTileWidget(
                      iconData: Icons.chat,
                      title: "Discussion",
                    ),
                    const ListTileWidget(
                      iconData: Icons.settings,
                      title: "Settings",
                    ),
                  ],
                ),
              ),
            ),
          ),
          OragneContainerWidget(
            padding: padding(start: 0.0),
          ),
        ],
      ),
    );
  }
}
