// Package imports:
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards_event.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cards/bloc_cards_state.dart';
import 'package:mtg_flutter_bloc/repository/repository_cards/repository_cards.dart';

class BlocCards extends Bloc<BlocCardsEvent, BlocCardsState> {
  final RepositoryCards _repositoryCards;

  BlocCards(this._repositoryCards)
      : super(const BlocCardsState(
          cards: [],
          error: '',
          isLoading: true,
        )) {
    on<BlocCardsEventInit>(_init);
  }

  Future<void> _init(
    BlocCardsEventInit event,
    Emitter<BlocCardsState> emit,
  ) async {
    try {
      final cards = await _repositoryCards.load();

      emit(
        BlocCardsState(
          cards: cards,
          error: '',
          isLoading: false,
        ),
      );
    } on DioError catch (e) {
      emit(BlocCardsState(
        cards: [],
        error: e.error.toString(),
        isLoading: false,
      ));
    }
  }
}
