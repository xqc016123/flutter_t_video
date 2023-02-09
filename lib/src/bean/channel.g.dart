// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Channel _$ChannelFromJson(Map<String, dynamic> json) => Channel(
      json['title'] as String,
      (json['items'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ChannelToJson(Channel instance) => <String, dynamic>{
      'title': instance.title,
      'items': instance.items,
    };

ChannelSet _$ChannelSetFromJson(Map<String, dynamic> json) => ChannelSet(
      (json['all'] as List<dynamic>)
          .map((e) => Channel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Channel.fromJson(json['my'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChannelSetToJson(ChannelSet instance) =>
    <String, dynamic>{
      'all': instance.all,
      'my': instance.my,
    };
