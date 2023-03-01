// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';

part 'bloc_cards_state.freezed.dart';

@freezed
class BlocCardsState with _$BlocCardsState {
  const factory BlocCardsState({
    required List<MtgCardInfo> cards,
    required String error,
    required bool isLoading,
  }) = _BlocCardsState;
}
