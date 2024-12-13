import 'package:flutter/material.dart';

import '../widgets/main_widgets/feed_back_widget.dart';
import '../widgets/main_widgets/packs_club__widget.dart';
import '../widgets/container_body_widget.dart';
import '../widgets/dashbord_app_bar_widget.dart';
import '../widgets/main_widgets/current_level_widget.dart';
import '../widgets/main_widgets/rewards_widget.dart';
import '../widgets/main_widgets/school_information_widget.dart';
import '../widgets/main_widgets/user_info_card_widget.dart';

class DashboardScreen extends StatelessWidget {
  static const String routeName = "/dash_bord";

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        DashBordAppBarWidget(),
        Positioned.fill(
          top: 110,
          child: ContainerBodyWidget(
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                SliverToBoxAdapter(
                  child: UserInfoCardWidget(),
                ),
                SliverToBoxAdapter(
                  child: CurrentLevelWidget(),
                ),
                // SliverToBoxAdapter(
                //   child: CalenderWidget(),
                // ),
                SliverToBoxAdapter(
                  child: PackagesClubWidget(),
                ),
                SliverToBoxAdapter(
                  child: SchoolInformationWidget(),
                ),
                SliverToBoxAdapter(
                  child: RewardsWidget(),
                ),
                SliverToBoxAdapter(
                  child: FeedBackWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
