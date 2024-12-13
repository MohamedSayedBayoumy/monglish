import 'package:flutter/material.dart';

class CustomPaddingAndScrollView extends StatelessWidget {
  final double? top, bottom, start, end;
  final Widget child;
  const CustomPaddingAndScrollView({
    super.key,
    this.top,
    this.bottom,
    this.start,
    this.end,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        bottom: bottom ?? 0.0,
        top: top ?? 10,
        end: end ?? 20.0,
        start: start ?? 20.0,
      ),
      child: child,
    );
  }
}
