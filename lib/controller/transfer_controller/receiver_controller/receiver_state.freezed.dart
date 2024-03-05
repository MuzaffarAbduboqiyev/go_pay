// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receiver_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReceiverState {
  NetworkStatus get networkStatus => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receiverCard => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiverStateCopyWith<ReceiverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverStateCopyWith<$Res> {
  factory $ReceiverStateCopyWith(
          ReceiverState value, $Res Function(ReceiverState) then) =
      _$ReceiverStateCopyWithImpl<$Res, ReceiverState>;
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      String receiverName,
      String receiverCard,
      String error});
}

/// @nodoc
class _$ReceiverStateCopyWithImpl<$Res, $Val extends ReceiverState>
    implements $ReceiverStateCopyWith<$Res> {
  _$ReceiverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? receiverName = null,
    Object? receiverCard = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiverStateImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$ReceiverStateImplCopyWith(
          _$ReceiverStateImpl value, $Res Function(_$ReceiverStateImpl) then) =
      __$$ReceiverStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      String receiverName,
      String receiverCard,
      String error});
}

/// @nodoc
class __$$ReceiverStateImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$ReceiverStateImpl>
    implements _$$ReceiverStateImplCopyWith<$Res> {
  __$$ReceiverStateImplCopyWithImpl(
      _$ReceiverStateImpl _value, $Res Function(_$ReceiverStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? receiverName = null,
    Object? receiverCard = null,
    Object? error = null,
  }) {
    return _then(_$ReceiverStateImpl(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiverStateImpl implements _ReceiverState {
  const _$ReceiverStateImpl(
      {required this.networkStatus,
      required this.receiverName,
      required this.receiverCard,
      required this.error});

  @override
  final NetworkStatus networkStatus;
  @override
  final String receiverName;
  @override
  final String receiverCard;
  @override
  final String error;

  @override
  String toString() {
    return 'ReceiverState(networkStatus: $networkStatus, receiverName: $receiverName, receiverCard: $receiverCard, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverStateImpl &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.receiverCard, receiverCard) ||
                other.receiverCard == receiverCard) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, networkStatus, receiverName, receiverCard, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverStateImplCopyWith<_$ReceiverStateImpl> get copyWith =>
      __$$ReceiverStateImplCopyWithImpl<_$ReceiverStateImpl>(this, _$identity);
}

abstract class _ReceiverState implements ReceiverState {
  const factory _ReceiverState(
      {required final NetworkStatus networkStatus,
      required final String receiverName,
      required final String receiverCard,
      required final String error}) = _$ReceiverStateImpl;

  @override
  NetworkStatus get networkStatus;
  @override
  String get receiverName;
  @override
  String get receiverCard;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$ReceiverStateImplCopyWith<_$ReceiverStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
