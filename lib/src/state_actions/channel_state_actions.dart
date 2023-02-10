import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../service/mock_service.dart';

part 'channel_state_actions.freezed.dart';

@freezed
abstract class ChannelState with _$ChannelState {
  const factory ChannelState({
    @Default([]) List<String> channels, // 我的频道
  }) = _ChannelState;

  const ChannelState._();
}

final channelsProvider = StateNotifierProvider<ChannelActions, ChannelState>(
      (ref) => ChannelActions()
    );

class ChannelActions extends StateNotifier<ChannelState> {
  ChannelActions() : super(ChannelState()) {
    loadChannels();
  }

  /// 加载频道数据
  void loadChannels() async {
    final allChannels = await MockService.getChannels();
    state = state.copyWith(channels: allChannels.my.items);
  }
}
