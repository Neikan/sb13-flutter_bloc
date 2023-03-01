// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart_event.dart';
import 'package:mtg_flutter_bloc/blocs/bloc_cart/bloc_cart_state.dart';
import 'package:mtg_flutter_bloc/repository/repository_cart/repository_cart.dart';

class BlocCart extends Bloc<BlocCartEvent, BlocCartState> {
  final RepositoryCart _repositoryCart;

  BlocCart(this._repositoryCart) : super(const BlocCartState(cards: [])) {
    on<BlocCartEventAdd>(_add);
    on<BlocCartEventRemove>(_remove);
  }

  void _add(
    BlocCartEventAdd event,
    Emitter<BlocCartState> emit,
  ) async {
    _repositoryCart.add(event.cardId);

    _update(emit);
  }

  void _remove(
    BlocCartEventRemove event,
    Emitter<BlocCartState> emit,
  ) async {
    _repositoryCart.remove(event.cardId);

    _update(emit);
  }

  void _update(Emitter<BlocCartState> emit) {
    final cards = _repositoryCart.data;

    emit(state.copyWith(cards: cards));
  }
}
