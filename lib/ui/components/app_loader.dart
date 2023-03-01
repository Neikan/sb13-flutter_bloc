// Flutter imports:
import 'package:flutter/material.dart';

const double _appLoaderBasePadding = 8.0;
const double _appLoaderBaseStrokeWidth = 4.0;

class AppLoader extends StatelessWidget {
  final Color? color;
  final double? padding, size, strokeWidth;

  const AppLoader({
    super.key,
    this.color,
    this.padding,
    this.size,
    this.strokeWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(padding ?? _appLoaderBasePadding),
        child: SizedBox(
          height: size,
          width: size,
          child: CircularProgressIndicator(
            color: color ?? Colors.red.shade900,
            strokeWidth: strokeWidth ?? _appLoaderBaseStrokeWidth,
          ),
        ),
      ),
    );
  }
}
