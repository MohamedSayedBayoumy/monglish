import 'package:flutter/material.dart';

import '../../../common/widgets/custom_deep_blue_color_container.dart';

class DashbordScreen extends StatelessWidget {
  static const String routeName = "/dash_bord";

  const DashbordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomDeepBlueColorContainer(),
        ),
      ],
    );
  }
}

