import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../../common/utils/enums.dart';
import '../controller/dashboard_controller.dart';
import '../widgets/load_widget.dart';
import '../widgets/main_widgets/calender_widget.dart';
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
    return Stack(
      children: [
        const DashBordAppBarWidget(),
        Positioned.fill(
          top: 110,
          child: ContainerBodyWidget(
            child: GetBuilder<DashboardController>(
              builder: (controller) {
                switch (controller.status) {
                  case Status.loading:
                    return const LoadingWidget();
                  case Status.loaded:
                    return CustomScrollView(
                      shrinkWrap: true,
                      slivers: [
                        const SliverToBoxAdapter(
                          child: UserInfoCardWidget(),
                        ),
                        SliverToBoxAdapter(
                          child: CurrentLevelWidget(
                            currentlevel:
                                controller.dashBoardModel!.data!.level!,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: CalenderWidget(
                            dashboardController: controller,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: PackagesClubWidget(
                            packageClubs:
                                controller.dashBoardModel!.data!.packageClubs,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: SchoolInformationWidget(
                            school: controller.dashBoardModel!.data!.school!,
                          ),
                        ),
                        const SliverToBoxAdapter(
                          child: RewardsWidget(),
                        ),
                        const SliverToBoxAdapter(
                          child: FeedBackWidget(),
                        ),
                      ],
                    );
                  case Status.failure:
                    return const Center();
                }
              },
            ),
          ),
        )
      ],
    );
  }
}
