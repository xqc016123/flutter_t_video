/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $MockGen {
  const $MockGen();

  /// File path: mock/channels.json
  String get channels => 'mock/channels.json';

  /// List of all assets
  List<String> get values => [channels];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Download_channel_icon_default.png
  AssetGenImage get downloadChannelIconDefault =>
      const AssetGenImage('assets/images/Download_channel_icon_default.png');

  /// File path: assets/images/icon_game.png
  AssetGenImage get iconGame =>
      const AssetGenImage('assets/images/icon_game.png');

  /// File path: assets/images/icon_search.png
  AssetGenImage get iconSearch =>
      const AssetGenImage('assets/images/icon_search.png');

  /// File path: assets/images/icon_time.png
  AssetGenImage get iconTime =>
      const AssetGenImage('assets/images/icon_time.png');

  /// File path: assets/images/launch_screen_app_logo.png
  AssetGenImage get launchScreenAppLogo =>
      const AssetGenImage('assets/images/launch_screen_app_logo.png');

  /// File path: assets/images/launch_screen_copyright_logo.png
  AssetGenImage get launchScreenCopyrightLogo =>
      const AssetGenImage('assets/images/launch_screen_copyright_logo.png');

  /// File path: assets/images/logo-video.png
  AssetGenImage get logoVideo =>
      const AssetGenImage('assets/images/logo-video.png');

  /// File path: assets/images/splash_shake.png
  AssetGenImage get splashShake =>
      const AssetGenImage('assets/images/splash_shake.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        downloadChannelIconDefault,
        iconGame,
        iconSearch,
        iconTime,
        launchScreenAppLogo,
        launchScreenCopyrightLogo,
        logoVideo,
        splashShake
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $MockGen mock = $MockGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider() => AssetImage(_assetName);

  String get path => _assetName;

  String get keyName => _assetName;
}
