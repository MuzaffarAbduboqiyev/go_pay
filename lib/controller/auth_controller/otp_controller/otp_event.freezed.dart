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
  String get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String otp) submit,
    required TResult Function(String phone) resend,
    required TResult Function(int session, String phone) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String otp)? submit,
    TResult? Function(String phone)? resend,
    TResult? Function(int session, String phone)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String otp)? submit,
    TResult Function(String phone)? resend,
    TResult Function(int session, String phone)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
    required TResult Function(OtpInitEvent value) init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
    TResult? Function(OtpInitEvent value)? init,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    TResult Function(OtpInitEvent value)? init,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OtpEventCopyWith<OtpEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpEventCopyWith<$Res> {
  factory $OtpEventCopyWith(OtpEvent value, $Res Function(OtpEvent) then) =
      _$OtpEventCopyWithImpl<$Res, OtpEvent>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class _$OtpEventCopyWithImpl<$Res, $Val extends OtpEvent>
    implements $OtpEventCopyWith<$Res> {
  _$OtpEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpSubmitEventImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpSubmitEventImplCopyWith(_$OtpSubmitEventImpl value,
          $Res Function(_$OtpSubmitEventImpl) then) =
      __$$OtpSubmitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone, String otp});
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
    Object? phone = null,
    Object? otp = null,
  }) {
    return _then(_$OtpSubmitEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpSubmitEventImpl implements OtpSubmitEvent {
  const _$OtpSubmitEventImpl({required this.phone, required this.otp});

  @override
  final String phone;
  @override
  final String otp;

  @override
  String toString() {
    return 'OtpEvent.submit(phone: $phone, otp: $otp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpSubmitEventImpl &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otp, otp) || other.otp == otp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, otp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpSubmitEventImplCopyWith<_$OtpSubmitEventImpl> get copyWith =>
      __$$OtpSubmitEventImplCopyWithImpl<_$OtpSubmitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String otp) submit,
    required TResult Function(String phone) resend,
    required TResult Function(int session, String phone) init,
  }) {
    return submit(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String otp)? submit,
    TResult? Function(String phone)? resend,
    TResult? Function(int session, String phone)? init,
  }) {
    return submit?.call(phone, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String otp)? submit,
    TResult Function(String phone)? resend,
    TResult Function(int session, String phone)? init,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(phone, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
    required TResult Function(OtpInitEvent value) init,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
    TResult? Function(OtpInitEvent value)? init,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    TResult Function(OtpInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class OtpSubmitEvent implements OtpEvent {
  const factory OtpSubmitEvent(
      {required final String phone,
      required final String otp}) = _$OtpSubmitEventImpl;

  @override
  String get phone;
  String get otp;
  @override
  @JsonKey(ignore: true)
  _$$OtpSubmitEventImplCopyWith<_$OtpSubmitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpResendEventImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpResendEventImplCopyWith(_$OtpResendEventImpl value,
          $Res Function(_$OtpResendEventImpl) then) =
      __$$OtpResendEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$OtpResendEventImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpResendEventImpl>
    implements _$$OtpResendEventImplCopyWith<$Res> {
  __$$OtpResendEventImplCopyWithImpl(
      _$OtpResendEventImpl _value, $Res Function(_$OtpResendEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$OtpResendEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpResendEventImpl implements OtpResendEvent {
  const _$OtpResendEventImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'OtpEvent.resend(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpResendEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpResendEventImplCopyWith<_$OtpResendEventImpl> get copyWith =>
      __$$OtpResendEventImplCopyWithImpl<_$OtpResendEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String otp) submit,
    required TResult Function(String phone) resend,
    required TResult Function(int session, String phone) init,
  }) {
    return resend(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String otp)? submit,
    TResult? Function(String phone)? resend,
    TResult? Function(int session, String phone)? init,
  }) {
    return resend?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String otp)? submit,
    TResult Function(String phone)? resend,
    TResult Function(int session, String phone)? init,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
    required TResult Function(OtpInitEvent value) init,
  }) {
    return resend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
    TResult? Function(OtpInitEvent value)? init,
  }) {
    return resend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    TResult Function(OtpInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (resend != null) {
      return resend(this);
    }
    return orElse();
  }
}

abstract class OtpResendEvent implements OtpEvent {
  const factory OtpResendEvent({required final String phone}) =
      _$OtpResendEventImpl;

  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$OtpResendEventImplCopyWith<_$OtpResendEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OtpInitEventImplCopyWith<$Res>
    implements $OtpEventCopyWith<$Res> {
  factory _$$OtpInitEventImplCopyWith(
          _$OtpInitEventImpl value, $Res Function(_$OtpInitEventImpl) then) =
      __$$OtpInitEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int session, String phone});
}

/// @nodoc
class __$$OtpInitEventImplCopyWithImpl<$Res>
    extends _$OtpEventCopyWithImpl<$Res, _$OtpInitEventImpl>
    implements _$$OtpInitEventImplCopyWith<$Res> {
  __$$OtpInitEventImplCopyWithImpl(
      _$OtpInitEventImpl _value, $Res Function(_$OtpInitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = null,
    Object? phone = null,
  }) {
    return _then(_$OtpInitEventImpl(
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as int,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OtpInitEventImpl implements OtpInitEvent {
  const _$OtpInitEventImpl({required this.session, required this.phone});

  @override
  final int session;
  @override
  final String phone;

  @override
  String toString() {
    return 'OtpEvent.init(session: $session, phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpInitEventImpl &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, session, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpInitEventImplCopyWith<_$OtpInitEventImpl> get copyWith =>
      __$$OtpInitEventImplCopyWithImpl<_$OtpInitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone, String otp) submit,
    required TResult Function(String phone) resend,
    required TResult Function(int session, String phone) init,
  }) {
    return init(session, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone, String otp)? submit,
    TResult? Function(String phone)? resend,
    TResult? Function(int session, String phone)? init,
  }) {
    return init?.call(session, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone, String otp)? submit,
    TResult Function(String phone)? resend,
    TResult Function(int session, String phone)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(session, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OtpSubmitEvent value) submit,
    required TResult Function(OtpResendEvent value) resend,
    required TResult Function(OtpInitEvent value) init,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OtpSubmitEvent value)? submit,
    TResult? Function(OtpResendEvent value)? resend,
    TResult? Function(OtpInitEvent value)? init,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OtpSubmitEvent value)? submit,
    TResult Function(OtpResendEvent value)? resend,
    TResult Function(OtpInitEvent value)? init,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class OtpInitEvent implements OtpEvent {
  const factory OtpInitEvent(
      {required final int session,
      required final String phone}) = _$OtpInitEventImpl;

  int get session;
  @override
  String get phone;
  @override
  @JsonKey(ignore: true)
  _$$OtpInitEventImplCopyWith<_$OtpInitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
