import 'package:flutter/material.dart';

class RowDetailsUserInfoCardWidget extends StatelessWidget {
  final IconData icon;
  final String value;
  final bool addFittedBox;
  const RowDetailsUserInfoCardWidget({
    super.key,
    required this.icon,
    required this.value,
    this.addFittedBox = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        const SizedBox(width: 3.0),
        if (addFittedBox == true) ...[
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                value,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ] else ...[
          Text(
            value,
            overflow: TextOverflow.ellipsis,
          ),
        ]
      ],
    );
  }
}
