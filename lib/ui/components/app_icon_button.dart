// Flutter imports:
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final EdgeInsetsGeometry? padding;

  const AppIconButton({
    Key? key,
    required this.child,
    this.onPressed,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: InkWell(
        borderRadius: BorderRadius.circular(28.0),
        radius: 28,
        onTap: onPressed,
        child: Container(
          decoration: const BoxDecoration(shape: BoxShape.circle),
          width: 56.0,
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: child,
        ),
      ),
    );
  }
}
