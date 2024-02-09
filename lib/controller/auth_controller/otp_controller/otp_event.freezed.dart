// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) submit,
    required TResult Function() resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? submit,
    TResult? Function()? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? submit,
    TResult Function()? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OtpSubmitEventImplCopyWith<$Res> {
  factory _$$OtpSubmitEventImplCopyWith(_$OtpSubmitEventImpl value,
          $Res Function(_$OtpSubmitEventImpl) then) =
      __$$OtpSubmitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otp});
}

/// @nodoc
class __$$OtpSubmitEventImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpSubmitEventImpl>
    implements _$$OtpSubmitEventImplCopyWith<$Res> {
  __$$OtpSubmitEventImplCopyWithImpl(
      _$OtpSubmitEventImpl _value, $Res Function(_$OtpSubmitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
  }) {
    return _then(_$OtpSubmitEventImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSubmitEventImpl implements OtpSubmitEvent {
  const _$OtpSubmitEventImpl({required this.otp});

  @override
  final String otp;

  @override
  String toString() {
    return 'OtpEvent.submit(otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSubmitEventImpl &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSubmitEventImplCopyWith<_$OtpSubmitEventImpl> get copyWith =>
      __$$OtpSubmitEventImplCopyWithImpl<_$OtpSubmitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) submit,
    required TResult Function() resend,
  }) {
    return submit(otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? submit,
    TResult? Function()? resend,
  }) {
    return submit?.call(otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? submit,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class OtpSubmitEvent implements OtpEvent {
  const factory OtpSubmitEvent({required final String otp}) =
      _$OtpSubmitEventImpl;

  String get otp;
  @JsonKey(ignore: true)
  _$$OtpSubmitEventImplCopyWith<_$OtpSubmitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendEventImplCopyWith<$Res> {
  factory _$$OtpResendEventImplCopyWith(_$OtpResendEventImpl value,
          $Res Function(_$OtpResendEventImpl) then) =
      __$$OtpResendEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OtpResendEventImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpResendEventImpl>
    implements _$$OtpResendEventImplCopyWith<$Res> {
  __$$OtpResendEventImplCopyWithImpl(
      _$OtpResendEventImpl _value, $Res Function(_$OtpResendEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OtpResendEventImpl implements OtpResendEvent {
  const _$OtpResendEventImpl();

  @override
  String toString() {
    return 'OtpEvent.resend()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OtpResendEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String otp) submit,
    required TResult Function() resend,
  }) {
    return resend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String otp)? submit,
    TResult? Function()? resend,
  }) {
    return resend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String otp)? submit,
    TResult Function()? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class OtpResendEvent implements OtpEvent {
  const factory OtpResendEvent() = _$OtpResendEventImpl;
}
