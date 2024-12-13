import 'package:flutter/material.dart';

import '../widgets/calender_widget.dart';
import '../widgets/container_body_widget.dart';
import '../widgets/dashbord_app_bar_widget.dart';
import '../widgets/level_widget.dart';
import '../widgets/user_info_card_widget.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "/dash_bord";

  const DashboardScreen({super.key});

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
                ),
                SliverToBoxAdapter(
                  child: LevelWidget(),
                ),
                SliverToBoxAdapter(
                  child: CalenderWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
