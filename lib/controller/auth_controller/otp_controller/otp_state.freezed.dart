// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpState {
  NetworkStatus get networkStatus => throw _privateConstructorUsedError;
  int get session => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpStateCopyWith<OtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpStateCopyWith<$Res> {
  factory $OtpStateCopyWith(OtpState value, $Res Function(OtpState) then) =
      _$OtpStateCopyWithImpl<$Res, OtpState>;
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      int session,
      String phoneNumber,
      String error});
}

/// @nodoc
class _$OtpStateCopyWithImpl<$Res, $Val extends OtpState>
    implements $OtpStateCopyWith<$Res> {
  _$OtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? session = null,
    Object? phoneNumber = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpStateImplCopyWith<$Res>
    implements $OtpStateCopyWith<$Res> {
  factory _$$OtpStateImplCopyWith(
          _$OtpStateImpl value, $Res Function(_$OtpStateImpl) then) =
      __$$OtpStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      int session,
      String phoneNumber,
      String error});
}

/// @nodoc
class __$$OtpStateImplCopyWithImpl<$Res>
    extends _$OtpStateCopyWithImpl<$Res, _$OtpStateImpl>
    implements _$$OtpStateImplCopyWith<$Res> {
  __$$OtpStateImplCopyWithImpl(
      _$OtpStateImpl _value, $Res Function(_$OtpStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? session = null,
    Object? phoneNumber = null,
    Object? error = null,
  }) {
    return _then(_$OtpStateImpl(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpStateImpl implements _OtpState {
  const _$OtpStateImpl(
      {required this.networkStatus,
      required this.session,
      required this.phoneNumber,
      required this.error});

  @override
  final NetworkStatus networkStatus;
  @override
  final int session;
  @override
  final String phoneNumber;
  @override
  final String error;

  @override
  String toString() {
    return 'OtpState(networkStatus: $networkStatus, session: $session, phoneNumber: $phoneNumber, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpStateImpl &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, networkStatus, session, phoneNumber, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      __$$OtpStateImplCopyWithImpl<_$OtpStateImpl>(this, _$identity);
}

abstract class _OtpState implements OtpState {
  const factory _OtpState(
      {required final NetworkStatus networkStatus,
      required final int session,
      required final String phoneNumber,
      required final String error}) = _$OtpStateImpl;

  @override
  NetworkStatus get networkStatus;
  @override
  int get session;
  @override
  String get phoneNumber;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$OtpStateImplCopyWith<_$OtpStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
