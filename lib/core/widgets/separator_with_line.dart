import 'package:flutter/material.dart';

import '../utils/config/theme.dart';

class SeparatorWithLine extends StatelessWidget {
  final String? title;
  final Color? titleColor;
  final Color? linesColor;

  const SeparatorWithLine({
    super.key,
    this.title = "",
    this.titleColor = Colors.grey,
    this.linesColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Divider(
            color: linesColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
        ),
        Text(title!,
            style: myTheme().textTheme.bodyMedium!.copyWith(color: titleColor)),
        Expanded(
          child: Divider(
            color: linesColor,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
        ),
      ],
    );
  }
}
