// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards_state.dart';
import 'package:mtg_flutter_bloc/ui/components/app_error_data.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/header_cards/header_cards.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/loader_cards.dart';
import 'package:mtg_flutter_bloc/ui/screens/screen_cards/components/view_cards.dart';

class ScreenCards extends StatelessWidget {
  const ScreenCards({super.key});

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<BlocCards, BlocCardsState>(builder: (_, state) {
        if (state.isLoading) return const LoaderCards();

        if (state.error.isNotEmpty) {
          return Scaffold(
            appBar: const HeaderCards(),
            body: AppErrorData(text: state.error),
          );
        }

        return ViewCards(cards: state.cards);
      });
}
