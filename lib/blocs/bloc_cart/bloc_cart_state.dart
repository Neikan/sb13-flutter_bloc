// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bloc_cart_state.freezed.dart';

@freezed
class BlocCartState with _$BlocCartState {
  const factory BlocCartState({
    required List<String> cards,
  }) = _BlocCartState;
}
