// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart.dart';
import 'package:mtg_flutter_bloc/consts/keys.dart';
import 'package:mtg_flutter_bloc/consts/translations.dart';
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/components/app_header.dart';
import 'package:mtg_flutter_bloc/ui/components/app_text.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/list_cards/list_card.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    final cards = BlocProvider.of<BlocCards>(context).state.cards;
    final cardsInCart = context.watch<BlocCart>().state.cards;

    final cardsToList = <MtgCardInfo>[];

    for (final card in cards) {
      if (cardsInCart.contains(card.id)) {
        cardsToList.add(card);
      }
    }

    return Scaffold(
      appBar: AppHeader(
        title: labelsCart[keyTitle]!,
      ),
      body: SafeArea(
        child: cardsInCart.isEmpty
            ? Center(
                child: AppText(
                  text: labelsCart[keyContent]!,
                  fontSize: 16,
                ),
              )
            : ListCards(cards: cardsToList),
      ),
    );
  }
}
