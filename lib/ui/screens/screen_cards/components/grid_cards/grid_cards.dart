// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/keys.dart';
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/grid_cards/grid_card_preview.dart';

class GridCards extends StatelessWidget {
  final List<MtgCardInfo> cards;

  const GridCards({
    super.key,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: const PageStorageKey(keyCardsGrid),
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.9,
      ),
      itemCount: cards.length,
      itemBuilder: (_, index) => GridCardPreview(
        card: cards[index],
      ),
    );
  }
}
