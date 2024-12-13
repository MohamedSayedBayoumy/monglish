import 'package:flutter/material.dart';

class DashboardContainerWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  const DashboardContainerWidget(
      {super.key, required this.backgroundColor, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(12.0)),
      child: child,
    );
  }
}
