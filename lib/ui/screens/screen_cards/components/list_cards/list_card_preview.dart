// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/components/app_card.dart';
import 'package:mtg_flutter_bloc/ui/components/app_divider.dart';
import 'package:mtg_flutter_bloc/ui/components/app_text.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/buttons/button_add_to_cart.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/buttons/button_go_to_card.dart';

class ListCardPreview extends StatelessWidget {
  final MtgCardInfo card;

  const ListCardPreview({
    super.key,
    required this.card,
  });

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
      rarity: card.rarity,
      widget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                child: AppText(
                  text: card.name,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  withOverflow: true,
                ),
              ),
              ButtonGoToCard(card: card),
            ],
          ),
          const AppDivider(
            padding: EdgeInsets.fromLTRB(0, 8, 0, 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: card.type,
              ),
              AppText(
                text: card.manaCost,
              ),
            ],
          ),
          const AppDivider(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 8),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: '\$${card.cmc * 10}',
                fontWeight: FontWeight.w500,
              ),
              ButtonAddToCart(cardId: card.id),
            ],
          ),
        ],
      ),
    );
  }
}
