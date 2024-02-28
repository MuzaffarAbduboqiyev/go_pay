// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonitoringModel _$MonitoringModelFromJson(Map<String, dynamic> json) {
  return _MonitoringModel.fromJson(json);
}

/// @nodoc
mixin _$MonitoringModel {
  @JsonKey(name: 'card_number', defaultValue: '')
  String get cardNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount', defaultValue: 0)
  double get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'currency', defaultValue: 0)
  int get currency => throw _privateConstructorUsedError;
  @JsonKey(name: 'ext_id', defaultValue: "")
  String get extId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id', defaultValue: 0)
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at', defaultValue: "")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at', defaultValue: "")
  String get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonitoringModelCopyWith<MonitoringModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitoringModelCopyWith<$Res> {
  factory $MonitoringModelCopyWith(
          MonitoringModel value, $Res Function(MonitoringModel) then) =
      _$MonitoringModelCopyWithImpl<$Res, MonitoringModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'card_number', defaultValue: '') String cardNumber,
      @JsonKey(name: 'amount', defaultValue: 0) double amount,
      @JsonKey(name: 'currency', defaultValue: 0) int currency,
      @JsonKey(name: 'ext_id', defaultValue: "") String extId,
      @JsonKey(name: 'user_id', defaultValue: 0) int userId,
      @JsonKey(name: 'created_at', defaultValue: "") String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: "") String updatedAt});
}

/// @nodoc
class _$MonitoringModelCopyWithImpl<$Res, $Val extends MonitoringModel>
    implements $MonitoringModelCopyWith<$Res> {
  _$MonitoringModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? amount = null,
    Object? currency = null,
    Object? extId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
      extId: null == extId
          ? _value.extId
          : extId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonitoringModelImplCopyWith<$Res>
    implements $MonitoringModelCopyWith<$Res> {
  factory _$$MonitoringModelImplCopyWith(_$MonitoringModelImpl value,
          $Res Function(_$MonitoringModelImpl) then) =
      __$$MonitoringModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'card_number', defaultValue: '') String cardNumber,
      @JsonKey(name: 'amount', defaultValue: 0) double amount,
      @JsonKey(name: 'currency', defaultValue: 0) int currency,
      @JsonKey(name: 'ext_id', defaultValue: "") String extId,
      @JsonKey(name: 'user_id', defaultValue: 0) int userId,
      @JsonKey(name: 'created_at', defaultValue: "") String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: "") String updatedAt});
}

/// @nodoc
class __$$MonitoringModelImplCopyWithImpl<$Res>
    extends _$MonitoringModelCopyWithImpl<$Res, _$MonitoringModelImpl>
    implements _$$MonitoringModelImplCopyWith<$Res> {
  __$$MonitoringModelImplCopyWithImpl(
      _$MonitoringModelImpl _value, $Res Function(_$MonitoringModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardNumber = null,
    Object? amount = null,
    Object? currency = null,
    Object? extId = null,
    Object? userId = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$MonitoringModelImpl(
      cardNumber: null == cardNumber
          ? _value.cardNumber
          : cardNumber // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as int,
      extId: null == extId
          ? _value.extId
          : extId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonitoringModelImpl implements _MonitoringModel {
  const _$MonitoringModelImpl(
      {@JsonKey(name: 'card_number', defaultValue: '') required this.cardNumber,
      @JsonKey(name: 'amount', defaultValue: 0) required this.amount,
      @JsonKey(name: 'currency', defaultValue: 0) required this.currency,
      @JsonKey(name: 'ext_id', defaultValue: "") required this.extId,
      @JsonKey(name: 'user_id', defaultValue: 0) required this.userId,
      @JsonKey(name: 'created_at', defaultValue: "") required this.createdAt,
      @JsonKey(name: 'updated_at', defaultValue: "") required this.updatedAt});

  factory _$MonitoringModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonitoringModelImplFromJson(json);

  @override
  @JsonKey(name: 'card_number', defaultValue: '')
  final String cardNumber;
  @override
  @JsonKey(name: 'amount', defaultValue: 0)
  final double amount;
  @override
  @JsonKey(name: 'currency', defaultValue: 0)
  final int currency;
  @override
  @JsonKey(name: 'ext_id', defaultValue: "")
  final String extId;
  @override
  @JsonKey(name: 'user_id', defaultValue: 0)
  final int userId;
  @override
  @JsonKey(name: 'created_at', defaultValue: "")
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at', defaultValue: "")
  final String updatedAt;

  @override
  String toString() {
    return 'MonitoringModel(cardNumber: $cardNumber, amount: $amount, currency: $currency, extId: $extId, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringModelImpl &&
            (identical(other.cardNumber, cardNumber) ||
                other.cardNumber == cardNumber) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.extId, extId) || other.extId == extId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cardNumber, amount, currency,
      extId, userId, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringModelImplCopyWith<_$MonitoringModelImpl> get copyWith =>
      __$$MonitoringModelImplCopyWithImpl<_$MonitoringModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonitoringModelImplToJson(
      this,
    );
  }
}

abstract class _MonitoringModel implements MonitoringModel {
  const factory _MonitoringModel(
      {@JsonKey(name: 'card_number', defaultValue: '')
      required final String cardNumber,
      @JsonKey(name: 'amount', defaultValue: 0) required final double amount,
      @JsonKey(name: 'currency', defaultValue: 0) required final int currency,
      @JsonKey(name: 'ext_id', defaultValue: "") required final String extId,
      @JsonKey(name: 'user_id', defaultValue: 0) required final int userId,
      @JsonKey(name: 'created_at', defaultValue: "")
      required final String createdAt,
      @JsonKey(name: 'updated_at', defaultValue: "")
      required final String updatedAt}) = _$MonitoringModelImpl;

  factory _MonitoringModel.fromJson(Map<String, dynamic> json) =
      _$MonitoringModelImpl.fromJson;

  @override
  @JsonKey(name: 'card_number', defaultValue: '')
  String get cardNumber;
  @override
  @JsonKey(name: 'amount', defaultValue: 0)
  double get amount;
  @override
  @JsonKey(name: 'currency', defaultValue: 0)
  int get currency;
  @override
  @JsonKey(name: 'ext_id', defaultValue: "")
  String get extId;
  @override
  @JsonKey(name: 'user_id', defaultValue: 0)
  int get userId;
  @override
  @JsonKey(name: 'created_at', defaultValue: "")
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at', defaultValue: "")
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MonitoringModelImplCopyWith<_$MonitoringModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
