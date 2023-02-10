// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channel_state_actions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChannelState {
  List<String> get channels => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelStateCopyWith<ChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelStateCopyWith<$Res> {
  factory $ChannelStateCopyWith(
          ChannelState value, $Res Function(ChannelState) then) =
      _$ChannelStateCopyWithImpl<$Res, ChannelState>;
  @useResult
  $Res call({List<String> channels});
}

/// @nodoc
class _$ChannelStateCopyWithImpl<$Res, $Val extends ChannelState>
    implements $ChannelStateCopyWith<$Res> {
  _$ChannelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
  }) {
    return _then(_value.copyWith(
      channels: null == channels
          ? _value.channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelStateCopyWith<$Res>
    implements $ChannelStateCopyWith<$Res> {
  factory _$$_ChannelStateCopyWith(
          _$_ChannelState value, $Res Function(_$_ChannelState) then) =
      __$$_ChannelStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> channels});
}

/// @nodoc
class __$$_ChannelStateCopyWithImpl<$Res>
    extends _$ChannelStateCopyWithImpl<$Res, _$_ChannelState>
    implements _$$_ChannelStateCopyWith<$Res> {
  __$$_ChannelStateCopyWithImpl(
      _$_ChannelState _value, $Res Function(_$_ChannelState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channels = null,
  }) {
    return _then(_$_ChannelState(
      channels: null == channels
          ? _value._channels
          : channels // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ChannelState extends _ChannelState {
  const _$_ChannelState({final List<String> channels = const []})
      : _channels = channels,
        super._();

  final List<String> _channels;
  @override
  @JsonKey()
  List<String> get channels {
    if (_channels is EqualUnmodifiableListView) return _channels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channels);
  }

  @override
  String toString() {
    return 'ChannelState(channels: $channels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelState &&
            const DeepCollectionEquality().equals(other._channels, _channels));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_channels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelStateCopyWith<_$_ChannelState> get copyWith =>
      __$$_ChannelStateCopyWithImpl<_$_ChannelState>(this, _$identity);
}

abstract class _ChannelState extends ChannelState {
  const factory _ChannelState({final List<String> channels}) = _$_ChannelState;
  const _ChannelState._() : super._();

  @override
  List<String> get channels;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelStateCopyWith<_$_ChannelState> get copyWith =>
      throw _privateConstructorUsedError;
}
