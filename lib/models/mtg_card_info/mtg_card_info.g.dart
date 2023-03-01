// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mtg_card_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MtgCardInfo _$$_MtgCardInfoFromJson(Map<String, dynamic> json) =>
    _$_MtgCardInfo(
      artist: json['artist'] as String,
      id: json['id'] as String,
      layout: json['layout'] as String,
      manaCost: json['manaCost'] as String,
      name: json['name'] as String,
      set: json['set'] as String,
      setName: json['setName'] as String,
      type: json['type'] as String,
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      cmc: (json['cmc'] as num).toDouble(),
      rarity: $enumDecode(_$MtgCardRarityEnumMap, json['rarity']),
      imageUrl: json['imageUrl'] as String?,
      loyalty: json['loyalty'] as String?,
      multiverseid: json['multiverseid'] as String?,
      number: json['number'] as String?,
      power: json['power'] as String?,
      text: json['text'] as String?,
      toughness: json['toughness'] as String?,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colorIdentity: (json['colorIdentity'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
      supertypes: (json['supertypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      subtypes: (json['subtypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      foreignNames: json['foreignNames'] as List<dynamic>?,
      legalities: json['legalities'] as List<dynamic>?,
      rulings: json['rulings'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_MtgCardInfoToJson(_$_MtgCardInfo instance) =>
    <String, dynamic>{
      'artist': instance.artist,
      'id': instance.id,
      'layout': instance.layout,
      'manaCost': instance.manaCost,
      'name': instance.name,
      'set': instance.set,
      'setName': instance.setName,
      'type': instance.type,
      'types': instance.types,
      'cmc': instance.cmc,
      'rarity': _$MtgCardRarityEnumMap[instance.rarity]!,
      'imageUrl': instance.imageUrl,
      'loyalty': instance.loyalty,
      'multiverseid': instance.multiverseid,
      'number': instance.number,
      'power': instance.power,
      'text': instance.text,
      'toughness': instance.toughness,
      'colors': instance.colors,
      'colorIdentity': instance.colorIdentity,
      'names': instance.names,
      'supertypes': instance.supertypes,
      'subtypes': instance.subtypes,
      'foreignNames': instance.foreignNames,
      'legalities': instance.legalities,
      'rulings': instance.rulings,
    };

const _$MtgCardRarityEnumMap = {
  MtgCardRarity.Common: 'Common',
  MtgCardRarity.Uncommon: 'Uncommon',
  MtgCardRarity.Rare: 'Rare',
  MtgCardRarity.Mystic: 'Mystic',
};
