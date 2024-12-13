import 'package:flutter/material.dart';

class DashboardContainerWidget extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final bool addTopPadding;
  final EdgeInsetsDirectional? padding;
  const DashboardContainerWidget({
    super.key,
    required this.backgroundColor,
    required this.child,
    this.addTopPadding = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: addTopPadding == true ? 10.0 : 0.0),
      child: Container(
        padding: padding ?? const EdgeInsetsDirectional.all(10.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12.0)),
        child: child,
      ),
    );
  }
}
