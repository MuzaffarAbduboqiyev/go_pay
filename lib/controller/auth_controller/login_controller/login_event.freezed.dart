// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) login,
    required TResult Function(String country) changeCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? login,
    TResult? Function(String country)? changeCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? login,
    TResult Function(String country)? changeCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitEvent value) login,
    required TResult Function(LoginCountryEvent value) changeCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitEvent value)? login,
    TResult? Function(LoginCountryEvent value)? changeCountry,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitEvent value)? login,
    TResult Function(LoginCountryEvent value)? changeCountry,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginSubmitEventImplCopyWith<$Res> {
  factory _$$LoginSubmitEventImplCopyWith(_$LoginSubmitEventImpl value,
          $Res Function(_$LoginSubmitEventImpl) then) =
      __$$LoginSubmitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phone});
}

/// @nodoc
class __$$LoginSubmitEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginSubmitEventImpl>
    implements _$$LoginSubmitEventImplCopyWith<$Res> {
  __$$LoginSubmitEventImplCopyWithImpl(_$LoginSubmitEventImpl _value,
      $Res Function(_$LoginSubmitEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$LoginSubmitEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginSubmitEventImpl implements LoginSubmitEvent {
  const _$LoginSubmitEventImpl({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'LoginEvent.login(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSubmitEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSubmitEventImplCopyWith<_$LoginSubmitEventImpl> get copyWith =>
      __$$LoginSubmitEventImplCopyWithImpl<_$LoginSubmitEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) login,
    required TResult Function(String country) changeCountry,
  }) {
    return login(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? login,
    TResult? Function(String country)? changeCountry,
  }) {
    return login?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? login,
    TResult Function(String country)? changeCountry,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitEvent value) login,
    required TResult Function(LoginCountryEvent value) changeCountry,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitEvent value)? login,
    TResult? Function(LoginCountryEvent value)? changeCountry,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitEvent value)? login,
    TResult Function(LoginCountryEvent value)? changeCountry,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginSubmitEvent implements LoginEvent {
  const factory LoginSubmitEvent({required final String phone}) =
      _$LoginSubmitEventImpl;

  String get phone;
  @JsonKey(ignore: true)
  _$$LoginSubmitEventImplCopyWith<_$LoginSubmitEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginCountryEventImplCopyWith<$Res> {
  factory _$$LoginCountryEventImplCopyWith(_$LoginCountryEventImpl value,
          $Res Function(_$LoginCountryEventImpl) then) =
      __$$LoginCountryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String country});
}

/// @nodoc
class __$$LoginCountryEventImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginCountryEventImpl>
    implements _$$LoginCountryEventImplCopyWith<$Res> {
  __$$LoginCountryEventImplCopyWithImpl(_$LoginCountryEventImpl _value,
      $Res Function(_$LoginCountryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? country = null,
  }) {
    return _then(_$LoginCountryEventImpl(
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginCountryEventImpl implements LoginCountryEvent {
  const _$LoginCountryEventImpl({required this.country});

  @override
  final String country;

  @override
  String toString() {
    return 'LoginEvent.changeCountry(country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginCountryEventImpl &&
            (identical(other.country, country) || other.country == country));
  }

  @override
  int get hashCode => Object.hash(runtimeType, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginCountryEventImplCopyWith<_$LoginCountryEventImpl> get copyWith =>
      __$$LoginCountryEventImplCopyWithImpl<_$LoginCountryEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) login,
    required TResult Function(String country) changeCountry,
  }) {
    return changeCountry(country);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phone)? login,
    TResult? Function(String country)? changeCountry,
  }) {
    return changeCountry?.call(country);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? login,
    TResult Function(String country)? changeCountry,
    required TResult orElse(),
  }) {
    if (changeCountry != null) {
      return changeCountry(country);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginSubmitEvent value) login,
    required TResult Function(LoginCountryEvent value) changeCountry,
  }) {
    return changeCountry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginSubmitEvent value)? login,
    TResult? Function(LoginCountryEvent value)? changeCountry,
  }) {
    return changeCountry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginSubmitEvent value)? login,
    TResult Function(LoginCountryEvent value)? changeCountry,
    required TResult orElse(),
  }) {
    if (changeCountry != null) {
      return changeCountry(this);
    }
    return orElse();
  }
}

abstract class LoginCountryEvent implements LoginEvent {
  const factory LoginCountryEvent({required final String country}) =
      _$LoginCountryEventImpl;

  String get country;
  @JsonKey(ignore: true)
  _$$LoginCountryEventImplCopyWith<_$LoginCountryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
