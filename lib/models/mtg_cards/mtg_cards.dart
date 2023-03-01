// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';

part 'mtg_cards.g.dart';

@JsonSerializable()
class MtgCards {
  final List<MtgCardInfo> cards;

  MtgCards({
    required this.cards,
  });

  factory MtgCards.fromJson(Map<String, dynamic> json) =>
      _$MtgCardsFromJson(json);

  Map<String, dynamic> toJson() => _$MtgCardsToJson(this);
}
