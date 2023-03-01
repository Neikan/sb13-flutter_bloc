// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:mtg_flutter_bloc/models/mtg_card_info/mtg_card_info.dart';

part 'mtg_card.g.dart';

@JsonSerializable()
class MtgCard {
  final MtgCardInfo card;

  MtgCard({
    required this.card,
  });

  factory MtgCard.fromJson(Map<String, dynamic> json) =>
      _$MtgCardFromJson(json);

  Map<String, dynamic> toJson() => _$MtgCardToJson(this);
}
