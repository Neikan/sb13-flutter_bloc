// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/enums.dart';
import 'package:mtg_flutter_bloc/ui/styles/colors.dart';

class AppCard extends StatelessWidget {
  final Widget widget;
  final MtgCardRarity rarity;
  final EdgeInsetsGeometry? padding;

  const AppCard({
    super.key,
    required this.widget,
    required this.rarity,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: rarityColors[rarity],
      margin: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 10,
      child: Container(
        padding: padding,
        child: widget,
      ),
    );
  }
}
