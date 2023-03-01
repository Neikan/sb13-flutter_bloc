// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards_event.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart.dart';
import 'package:mtg_flutter_bloc/initialization.dart';
import 'package:mtg_flutter_bloc/repository/repository_cards/repository_cards_imp.dart';
import 'package:mtg_flutter_bloc/repository/repository_cart/repository_cart_imp.dart';
import 'package:mtg_flutter_bloc/ui/components/app.dart';

void main() {
  initializeServices();

  const repositoryCards = RepositoryCardsImp();
  const repositoryCart = RepositoryCartImp();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<BlocCards>(
          create: (_) => BlocCards(repositoryCards)..add(BlocCardsEventInit()),
        ),
        BlocProvider<BlocCart>(
          create: (_) => BlocCart(repositoryCart),
        ),
      ],
      child: const App(),
    ),
  );
}
