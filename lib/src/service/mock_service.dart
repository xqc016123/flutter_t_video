import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';

import '../constant/logger.dart';
import '../bean/channel.dart';
import '../service/mock_api.dart';

class MockService {
  /// 频道列表
  static Future<ChannelSet> getChannels() async {
    final responseJson = await _mock(MockAPI.channels);
    return ChannelSet.fromJson(responseJson);
  }

  /// 模拟网络请求的mock数据
  static Future<dynamic> _mock(String api) async {
    return Future.delayed(Duration(microseconds: Random().nextInt(300)),
        () async {
      var responseStr = await rootBundle.loadString('mock/$api.json');
      logger.d('$api请求结果：$responseStr');
      var responseJson = json.decode(responseStr);
      return responseJson;
    });
  }
}
