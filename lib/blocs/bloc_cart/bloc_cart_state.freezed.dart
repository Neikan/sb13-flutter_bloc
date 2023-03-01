// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bloc_cart_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocCartState {
  List<String> get cards => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BlocCartStateCopyWith<BlocCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocCartStateCopyWith<$Res> {
  factory $BlocCartStateCopyWith(
          BlocCartState value, $Res Function(BlocCartState) then) =
      _$BlocCartStateCopyWithImpl<$Res, BlocCartState>;
  @useResult
  $Res call({List<String> cards});
}

/// @nodoc
class _$BlocCartStateCopyWithImpl<$Res, $Val extends BlocCartState>
    implements $BlocCartStateCopyWith<$Res> {
  _$BlocCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_value.copyWith(
      cards: null == cards
          ? _value.cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlocCartStateCopyWith<$Res>
    implements $BlocCartStateCopyWith<$Res> {
  factory _$$_BlocCartStateCopyWith(
          _$_BlocCartState value, $Res Function(_$_BlocCartState) then) =
      __$$_BlocCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> cards});
}

/// @nodoc
class __$$_BlocCartStateCopyWithImpl<$Res>
    extends _$BlocCartStateCopyWithImpl<$Res, _$_BlocCartState>
    implements _$$_BlocCartStateCopyWith<$Res> {
  __$$_BlocCartStateCopyWithImpl(
      _$_BlocCartState _value, $Res Function(_$_BlocCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
  }) {
    return _then(_$_BlocCartState(
      cards: null == cards
          ? _value._cards
          : cards // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_BlocCartState implements _BlocCartState {
  const _$_BlocCartState({required final List<String> cards}) : _cards = cards;

  final List<String> _cards;
  @override
  List<String> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'BlocCartState(cards: $cards)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlocCartState &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cards));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlocCartStateCopyWith<_$_BlocCartState> get copyWith =>
      __$$_BlocCartStateCopyWithImpl<_$_BlocCartState>(this, _$identity);
}

abstract class _BlocCartState implements BlocCartState {
  const factory _BlocCartState({required final List<String> cards}) =
      _$_BlocCartState;

  @override
  List<String> get cards;
  @override
  @JsonKey(ignore: true)
  _$$_BlocCartStateCopyWith<_$_BlocCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
