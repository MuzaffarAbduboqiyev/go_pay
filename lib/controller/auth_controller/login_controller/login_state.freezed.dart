// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  NetworkStatus get networkStatus => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  MaskTextInputFormatter get phoneMaskFormatter =>
      throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      String country,
      MaskTextInputFormatter phoneMaskFormatter,
      String error});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? country = null,
    Object? phoneMaskFormatter = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phoneMaskFormatter: null == phoneMaskFormatter
          ? _value.phoneMaskFormatter
          : phoneMaskFormatter // ignore: cast_nullable_to_non_nullable
              as MaskTextInputFormatter,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginStateImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginStateImplCopyWith(
          _$LoginStateImpl value, $Res Function(_$LoginStateImpl) then) =
      __$$LoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      String country,
      MaskTextInputFormatter phoneMaskFormatter,
      String error});
}

/// @nodoc
class __$$LoginStateImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateImpl>
    implements _$$LoginStateImplCopyWith<$Res> {
  __$$LoginStateImplCopyWithImpl(
      _$LoginStateImpl _value, $Res Function(_$LoginStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? country = null,
    Object? phoneMaskFormatter = null,
    Object? error = null,
  }) {
    return _then(_$LoginStateImpl(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      phoneMaskFormatter: null == phoneMaskFormatter
          ? _value.phoneMaskFormatter
          : phoneMaskFormatter // ignore: cast_nullable_to_non_nullable
              as MaskTextInputFormatter,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateImpl implements _LoginState {
  const _$LoginStateImpl(
      {required this.networkStatus,
      required this.country,
      required this.phoneMaskFormatter,
      required this.error});

  @override
  final NetworkStatus networkStatus;
  @override
  final String country;
  @override
  final MaskTextInputFormatter phoneMaskFormatter;
  @override
  final String error;

  @override
  String toString() {
    return 'LoginState(networkStatus: $networkStatus, country: $country, phoneMaskFormatter: $phoneMaskFormatter, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateImpl &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.phoneMaskFormatter, phoneMaskFormatter) ||
                other.phoneMaskFormatter == phoneMaskFormatter) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, networkStatus, country, phoneMaskFormatter, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      __$$LoginStateImplCopyWithImpl<_$LoginStateImpl>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  const factory _LoginState(
      {required final NetworkStatus networkStatus,
      required final String country,
      required final MaskTextInputFormatter phoneMaskFormatter,
      required final String error}) = _$LoginStateImpl;

  @override
  NetworkStatus get networkStatus;
  @override
  String get country;
  @override
  MaskTextInputFormatter get phoneMaskFormatter;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$LoginStateImplCopyWith<_$LoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
