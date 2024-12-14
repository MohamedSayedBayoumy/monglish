import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DashboardContainerWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final bool addTopPadding;
  final EdgeInsetsDirectional? padding;
  final int delayFadeWidget;
  final List<BoxShadow>? boxShadow;
  const DashboardContainerWidget({
    super.key,
    required this.backgroundColor,
    required this.child,
    this.addTopPadding = true,
    this.padding,
    this.delayFadeWidget = 500,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return FadeIn(
      duration: const Duration(seconds: 1),
      delay: Duration(milliseconds: delayFadeWidget),
      child: Padding(
        padding: EdgeInsets.only(top: addTopPadding == true ? 10.0 : 0.0),
        child: Container(
          padding: padding ?? const EdgeInsetsDirectional.all(10.0),
          decoration: BoxDecoration(
            boxShadow: boxShadow ?? [],
            color: backgroundColor,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: child,
        ),
      ),
    );
  }
}
