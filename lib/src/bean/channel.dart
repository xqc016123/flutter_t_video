import 'package:json_annotation/json_annotation.dart';

part 'channel.g.dart';

@JsonSerializable()
class Channel {
  Channel(this.title, this.items);

  String title;
  List<String> items;

  factory Channel.fromJson(Map<String, dynamic> json) => _$ChannelFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelToJson(this);
}

@JsonSerializable()
class ChannelSet {
  ChannelSet(this.all, this.my);

  List<Channel> all;
  Channel my;

  factory ChannelSet.fromJson(Map<String, dynamic> json) => _$ChannelSetFromJson(json);

  Map<String, dynamic> toJson() => _$ChannelSetToJson(this);
}