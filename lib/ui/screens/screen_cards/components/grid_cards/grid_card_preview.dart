// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/components/app_card.dart';
import 'package:mtg_flutter_bloc/ui/components/app_divider.dart';
import 'package:mtg_flutter_bloc/ui/components/app_text.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/buttons/button_add_to_cart.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/buttons/button_go_to_card.dart';

class GridCardPreview extends StatelessWidget {
  final MtgCardInfo card;

  const GridCardPreview({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.only(top: 8),
      rarity: card.rarity,
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: AppText(
                  text: card.name,
                  fontWeight: FontWeight.w500,
                  padding: const EdgeInsets.only(left: 16),
                ),
              ),
              ButtonGoToCard(card: card),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const AppDivider(
                  padding: EdgeInsets.only(bottom: 16),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: AppText(
                    text: card.type,
                    padding: const EdgeInsets.only(bottom: 4),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: AppText(
                    text: card.manaCost,
                    padding: const EdgeInsets.only(top: 4),
                  ),
                ),
                const AppDivider(
                  padding: EdgeInsets.only(top: 16),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: '\$${card.cmc * 10}',
                fontWeight: FontWeight.w500,
                padding: const EdgeInsets.only(left: 16),
              ),
              ButtonAddToCart(cardId: card.id),
            ],
          ),
        ],
      ),
    );
  }
}
