// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:mtg_flutter_bloc/consts/enums.dart';

part 'mtg_card_info.freezed.dart';
part 'mtg_card_info.g.dart';

@freezed
class MtgCardInfo with _$MtgCardInfo {
  const factory MtgCardInfo({
    required String artist,
    required String id,
    required String layout,
    required String manaCost,
    required String name,
    required String set,
    required String setName,
    required String type,
    required List<String> types,
    required double cmc,
    required MtgCardRarity rarity,
    String? imageUrl,
    String? loyalty,
    String? multiverseid,
    String? number,
    String? power,
    String? text,
    String? toughness,
    List<String>? colors,
    List<String>? colorIdentity,
    List<String>? names,
    List<String>? supertypes,
    List<String>? subtypes,
    List<dynamic>? foreignNames,
    List<dynamic>? legalities,
    List<dynamic>? rulings,
  }) = _MtgCardInfo;

  factory MtgCardInfo.fromJson(Map<String, dynamic> json) =>
      _$MtgCardInfoFromJson(json);
}
