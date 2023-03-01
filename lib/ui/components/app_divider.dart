// Flutter imports:
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final Color? color;
  final EdgeInsetsGeometry? padding;

  const AppDivider({
    Key? key,
    this.color,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (padding != null) {
      return Container(
        padding: padding,
        child: const AppDivider(),
      );
    }

    return Divider(
      color: color ?? Colors.grey.shade700,
      height: 0.0,
    );
  }
}
