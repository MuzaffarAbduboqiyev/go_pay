// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AmountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard, String receiverName) initial,
    required TResult Function(double amount) changeAmount,
    required TResult Function() getCommission,
    required TResult Function() sendAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard, String receiverName)? initial,
    TResult? Function(double amount)? changeAmount,
    TResult? Function()? getCommission,
    TResult? Function()? sendAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard, String receiverName)? initial,
    TResult Function(double amount)? changeAmount,
    TResult Function()? getCommission,
    TResult Function()? sendAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AmountInitialEvent value) initial,
    required TResult Function(ChangeAmountEvent value) changeAmount,
    required TResult Function(GetCommissionEvent value) getCommission,
    required TResult Function(SendAmountEvent value) sendAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AmountInitialEvent value)? initial,
    TResult? Function(ChangeAmountEvent value)? changeAmount,
    TResult? Function(GetCommissionEvent value)? getCommission,
    TResult? Function(SendAmountEvent value)? sendAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AmountInitialEvent value)? initial,
    TResult Function(ChangeAmountEvent value)? changeAmount,
    TResult Function(GetCommissionEvent value)? getCommission,
    TResult Function(SendAmountEvent value)? sendAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountEventCopyWith<$Res> {
  factory $AmountEventCopyWith(
          AmountEvent value, $Res Function(AmountEvent) then) =
      _$AmountEventCopyWithImpl<$Res, AmountEvent>;
}

/// @nodoc
class _$AmountEventCopyWithImpl<$Res, $Val extends AmountEvent>
    implements $AmountEventCopyWith<$Res> {
  _$AmountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AmountInitialEventImplCopyWith<$Res> {
  factory _$$AmountInitialEventImplCopyWith(_$AmountInitialEventImpl value,
          $Res Function(_$AmountInitialEventImpl) then) =
      __$$AmountInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String receiverCard, String receiverName});
}

/// @nodoc
class __$$AmountInitialEventImplCopyWithImpl<$Res>
    extends _$AmountEventCopyWithImpl<$Res, _$AmountInitialEventImpl>
    implements _$$AmountInitialEventImplCopyWith<$Res> {
  __$$AmountInitialEventImplCopyWithImpl(_$AmountInitialEventImpl _value,
      $Res Function(_$AmountInitialEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverCard = null,
    Object? receiverName = null,
  }) {
    return _then(_$AmountInitialEventImpl(
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountInitialEventImpl implements AmountInitialEvent {
  const _$AmountInitialEventImpl(
      {required this.receiverCard, required this.receiverName});

  @override
  final String receiverCard;
  @override
  final String receiverName;

  @override
  String toString() {
    return 'AmountEvent.initial(receiverCard: $receiverCard, receiverName: $receiverName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountInitialEventImpl &&
            (identical(other.receiverCard, receiverCard) ||
                other.receiverCard == receiverCard) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverCard, receiverName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountInitialEventImplCopyWith<_$AmountInitialEventImpl> get copyWith =>
      __$$AmountInitialEventImplCopyWithImpl<_$AmountInitialEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard, String receiverName) initial,
    required TResult Function(double amount) changeAmount,
    required TResult Function() getCommission,
    required TResult Function() sendAmount,
  }) {
    return initial(receiverCard, receiverName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard, String receiverName)? initial,
    TResult? Function(double amount)? changeAmount,
    TResult? Function()? getCommission,
    TResult? Function()? sendAmount,
  }) {
    return initial?.call(receiverCard, receiverName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard, String receiverName)? initial,
    TResult Function(double amount)? changeAmount,
    TResult Function()? getCommission,
    TResult Function()? sendAmount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(receiverCard, receiverName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AmountInitialEvent value) initial,
    required TResult Function(ChangeAmountEvent value) changeAmount,
    required TResult Function(GetCommissionEvent value) getCommission,
    required TResult Function(SendAmountEvent value) sendAmount,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AmountInitialEvent value)? initial,
    TResult? Function(ChangeAmountEvent value)? changeAmount,
    TResult? Function(GetCommissionEvent value)? getCommission,
    TResult? Function(SendAmountEvent value)? sendAmount,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AmountInitialEvent value)? initial,
    TResult Function(ChangeAmountEvent value)? changeAmount,
    TResult Function(GetCommissionEvent value)? getCommission,
    TResult Function(SendAmountEvent value)? sendAmount,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AmountInitialEvent implements AmountEvent {
  const factory AmountInitialEvent(
      {required final String receiverCard,
      required final String receiverName}) = _$AmountInitialEventImpl;

  String get receiverCard;
  String get receiverName;
  @JsonKey(ignore: true)
  _$$AmountInitialEventImplCopyWith<_$AmountInitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeAmountEventImplCopyWith<$Res> {
  factory _$$ChangeAmountEventImplCopyWith(_$ChangeAmountEventImpl value,
          $Res Function(_$ChangeAmountEventImpl) then) =
      __$$ChangeAmountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double amount});
}

/// @nodoc
class __$$ChangeAmountEventImplCopyWithImpl<$Res>
    extends _$AmountEventCopyWithImpl<$Res, _$ChangeAmountEventImpl>
    implements _$$ChangeAmountEventImplCopyWith<$Res> {
  __$$ChangeAmountEventImplCopyWithImpl(_$ChangeAmountEventImpl _value,
      $Res Function(_$ChangeAmountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$ChangeAmountEventImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$ChangeAmountEventImpl implements ChangeAmountEvent {
  const _$ChangeAmountEventImpl({required this.amount});

  @override
  final double amount;

  @override
  String toString() {
    return 'AmountEvent.changeAmount(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeAmountEventImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeAmountEventImplCopyWith<_$ChangeAmountEventImpl> get copyWith =>
      __$$ChangeAmountEventImplCopyWithImpl<_$ChangeAmountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard, String receiverName) initial,
    required TResult Function(double amount) changeAmount,
    required TResult Function() getCommission,
    required TResult Function() sendAmount,
  }) {
    return changeAmount(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard, String receiverName)? initial,
    TResult? Function(double amount)? changeAmount,
    TResult? Function()? getCommission,
    TResult? Function()? sendAmount,
  }) {
    return changeAmount?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard, String receiverName)? initial,
    TResult Function(double amount)? changeAmount,
    TResult Function()? getCommission,
    TResult Function()? sendAmount,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AmountInitialEvent value) initial,
    required TResult Function(ChangeAmountEvent value) changeAmount,
    required TResult Function(GetCommissionEvent value) getCommission,
    required TResult Function(SendAmountEvent value) sendAmount,
  }) {
    return changeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AmountInitialEvent value)? initial,
    TResult? Function(ChangeAmountEvent value)? changeAmount,
    TResult? Function(GetCommissionEvent value)? getCommission,
    TResult? Function(SendAmountEvent value)? sendAmount,
  }) {
    return changeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AmountInitialEvent value)? initial,
    TResult Function(ChangeAmountEvent value)? changeAmount,
    TResult Function(GetCommissionEvent value)? getCommission,
    TResult Function(SendAmountEvent value)? sendAmount,
    required TResult orElse(),
  }) {
    if (changeAmount != null) {
      return changeAmount(this);
    }
    return orElse();
  }
}

abstract class ChangeAmountEvent implements AmountEvent {
  const factory ChangeAmountEvent({required final double amount}) =
      _$ChangeAmountEventImpl;

  double get amount;
  @JsonKey(ignore: true)
  _$$ChangeAmountEventImplCopyWith<_$ChangeAmountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCommissionEventImplCopyWith<$Res> {
  factory _$$GetCommissionEventImplCopyWith(_$GetCommissionEventImpl value,
          $Res Function(_$GetCommissionEventImpl) then) =
      __$$GetCommissionEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCommissionEventImplCopyWithImpl<$Res>
    extends _$AmountEventCopyWithImpl<$Res, _$GetCommissionEventImpl>
    implements _$$GetCommissionEventImplCopyWith<$Res> {
  __$$GetCommissionEventImplCopyWithImpl(_$GetCommissionEventImpl _value,
      $Res Function(_$GetCommissionEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCommissionEventImpl implements GetCommissionEvent {
  const _$GetCommissionEventImpl();

  @override
  String toString() {
    return 'AmountEvent.getCommission()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCommissionEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard, String receiverName) initial,
    required TResult Function(double amount) changeAmount,
    required TResult Function() getCommission,
    required TResult Function() sendAmount,
  }) {
    return getCommission();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard, String receiverName)? initial,
    TResult? Function(double amount)? changeAmount,
    TResult? Function()? getCommission,
    TResult? Function()? sendAmount,
  }) {
    return getCommission?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard, String receiverName)? initial,
    TResult Function(double amount)? changeAmount,
    TResult Function()? getCommission,
    TResult Function()? sendAmount,
    required TResult orElse(),
  }) {
    if (getCommission != null) {
      return getCommission();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AmountInitialEvent value) initial,
    required TResult Function(ChangeAmountEvent value) changeAmount,
    required TResult Function(GetCommissionEvent value) getCommission,
    required TResult Function(SendAmountEvent value) sendAmount,
  }) {
    return getCommission(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AmountInitialEvent value)? initial,
    TResult? Function(ChangeAmountEvent value)? changeAmount,
    TResult? Function(GetCommissionEvent value)? getCommission,
    TResult? Function(SendAmountEvent value)? sendAmount,
  }) {
    return getCommission?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AmountInitialEvent value)? initial,
    TResult Function(ChangeAmountEvent value)? changeAmount,
    TResult Function(GetCommissionEvent value)? getCommission,
    TResult Function(SendAmountEvent value)? sendAmount,
    required TResult orElse(),
  }) {
    if (getCommission != null) {
      return getCommission(this);
    }
    return orElse();
  }
}

abstract class GetCommissionEvent implements AmountEvent {
  const factory GetCommissionEvent() = _$GetCommissionEventImpl;
}

/// @nodoc
abstract class _$$SendAmountEventImplCopyWith<$Res> {
  factory _$$SendAmountEventImplCopyWith(_$SendAmountEventImpl value,
          $Res Function(_$SendAmountEventImpl) then) =
      __$$SendAmountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendAmountEventImplCopyWithImpl<$Res>
    extends _$AmountEventCopyWithImpl<$Res, _$SendAmountEventImpl>
    implements _$$SendAmountEventImplCopyWith<$Res> {
  __$$SendAmountEventImplCopyWithImpl(
      _$SendAmountEventImpl _value, $Res Function(_$SendAmountEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendAmountEventImpl implements SendAmountEvent {
  const _$SendAmountEventImpl();

  @override
  String toString() {
    return 'AmountEvent.sendAmount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendAmountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard, String receiverName) initial,
    required TResult Function(double amount) changeAmount,
    required TResult Function() getCommission,
    required TResult Function() sendAmount,
  }) {
    return sendAmount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard, String receiverName)? initial,
    TResult? Function(double amount)? changeAmount,
    TResult? Function()? getCommission,
    TResult? Function()? sendAmount,
  }) {
    return sendAmount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard, String receiverName)? initial,
    TResult Function(double amount)? changeAmount,
    TResult Function()? getCommission,
    TResult Function()? sendAmount,
    required TResult orElse(),
  }) {
    if (sendAmount != null) {
      return sendAmount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AmountInitialEvent value) initial,
    required TResult Function(ChangeAmountEvent value) changeAmount,
    required TResult Function(GetCommissionEvent value) getCommission,
    required TResult Function(SendAmountEvent value) sendAmount,
  }) {
    return sendAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AmountInitialEvent value)? initial,
    TResult? Function(ChangeAmountEvent value)? changeAmount,
    TResult? Function(GetCommissionEvent value)? getCommission,
    TResult? Function(SendAmountEvent value)? sendAmount,
  }) {
    return sendAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AmountInitialEvent value)? initial,
    TResult Function(ChangeAmountEvent value)? changeAmount,
    TResult Function(GetCommissionEvent value)? getCommission,
    TResult Function(SendAmountEvent value)? sendAmount,
    required TResult orElse(),
  }) {
    if (sendAmount != null) {
      return sendAmount(this);
    }
    return orElse();
  }
}

abstract class SendAmountEvent implements AmountEvent {
  const factory SendAmountEvent() = _$SendAmountEventImpl;
}
