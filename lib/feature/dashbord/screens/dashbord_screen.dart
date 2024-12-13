import 'package:flutter/material.dart';

import '../widgets/container_body_widget.dart';
import '../widgets/dashbord_app_bar_widget.dart';
import '../widgets/user_info_card_widget.dart';

class DashbordScreen extends StatelessWidget {
  static const String routeName = "/dash_bord";

  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        DashBordAppBarWidget(),
        Positioned(
          top: 110,
          child: ContainerBodyWidget(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: UserInfoCardWidget(),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
