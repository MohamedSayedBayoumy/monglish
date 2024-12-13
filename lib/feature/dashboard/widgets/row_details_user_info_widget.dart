import 'package:flutter/material.dart';

class RowDetailsUserInfoCardWidget extends StatelessWidget {
  final IconData icon;
  final Color? iconColor;
  final String value;
  final bool addFittedBox;
  const RowDetailsUserInfoCardWidget({
    super.key,
    required this.icon,
    required this.value,
    this.addFittedBox = false,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: iconColor ?? Colors.blue,
        ),
        const SizedBox(width: 3.0),
        if (addFittedBox == true) ...[
          Expanded(
            child: FittedBox(
              alignment: AlignmentDirectional.centerStart,
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
