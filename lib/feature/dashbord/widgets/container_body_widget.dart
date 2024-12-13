import 'package:flutter/material.dart';

class ContainerBodyWidget extends StatelessWidget {
  final Widget child;
  const ContainerBodyWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        padding: const EdgeInsets.all(10.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(12), topEnd: Radius.circular(12))),
        child: child);
  }
}
