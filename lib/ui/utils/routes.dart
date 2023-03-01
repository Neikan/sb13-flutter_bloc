// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/keys.dart';
import 'package:mtg_flutter_bloc/consts/routes.dart';
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_card/screen_card.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/screen_cards.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cart/screen_cart.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_not_found.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeCards:
            return const ScreenCards();

          case routeCard:
            final arguments = settings.arguments as Map<String, MtgCardInfo>;
            final card = arguments[keyCard]!;

            return ScreenCard(
              cardId: card.id,
              title: card.name,
            );

          case routeCart:
            return const ScreenCart();

          default:
            return const ScreenNotFound();
        }
      },
    );
