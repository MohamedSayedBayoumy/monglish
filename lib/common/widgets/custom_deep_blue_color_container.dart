import 'package:flutter/widgets.dart';

class CustomDeepBlueColorContainer extends StatelessWidget {
  final Widget? child;
  const CustomDeepBlueColorContainer({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF0C2B56),
            Color(0xFF0C2B56),
            Color(0xFF1d3885),
            Color(0xFF1d3885),
            Color(0xFF0C2B56),
            Color(0xFF0C2B56),
          ],
        ),
      ),
      child: child ?? const Center(),
    );
  }
}
