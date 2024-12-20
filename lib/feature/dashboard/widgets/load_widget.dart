import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: Colors.grey.shade300,
        strokeCap: StrokeCap.round,
        strokeWidth: 2,
      ),
    );
  }
}
