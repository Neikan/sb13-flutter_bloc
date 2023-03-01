// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtg_cards.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MtgCards _$MtgCardsFromJson(Map<String, dynamic> json) => MtgCards(
      cards: (json['cards'] as List<dynamic>)
          .map((e) => MtgCardInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MtgCardsToJson(MtgCards instance) => <String, dynamic>{
      'cards': instance.cards,
    };
