// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AmountState {
  NetworkStatus get networkStatus => throw _privateConstructorUsedError;
  NetworkStatus get transferNetworkStatus => throw _privateConstructorUsedError;
  NetworkStatus get commissionNetworkStatus =>
      throw _privateConstructorUsedError;
  CommissionModel? get commissionModel => throw _privateConstructorUsedError;
  String get transferLink => throw _privateConstructorUsedError;
  String get extId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get receiverCard => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AmountStateCopyWith<AmountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountStateCopyWith<$Res> {
  factory $AmountStateCopyWith(
          AmountState value, $Res Function(AmountState) then) =
      _$AmountStateCopyWithImpl<$Res, AmountState>;
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      NetworkStatus transferNetworkStatus,
      NetworkStatus commissionNetworkStatus,
      CommissionModel? commissionModel,
      String transferLink,
      String extId,
      double amount,
      String receiverCard,
      String receiverName,
      String error});

  $CommissionModelCopyWith<$Res>? get commissionModel;
}

/// @nodoc
class _$AmountStateCopyWithImpl<$Res, $Val extends AmountState>
    implements $AmountStateCopyWith<$Res> {
  _$AmountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? transferNetworkStatus = null,
    Object? commissionNetworkStatus = null,
    Object? commissionModel = freezed,
    Object? transferLink = null,
    Object? extId = null,
    Object? amount = null,
    Object? receiverCard = null,
    Object? receiverName = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      transferNetworkStatus: null == transferNetworkStatus
          ? _value.transferNetworkStatus
          : transferNetworkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      commissionNetworkStatus: null == commissionNetworkStatus
          ? _value.commissionNetworkStatus
          : commissionNetworkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      commissionModel: freezed == commissionModel
          ? _value.commissionModel
          : commissionModel // ignore: cast_nullable_to_non_nullable
              as CommissionModel?,
      transferLink: null == transferLink
          ? _value.transferLink
          : transferLink // ignore: cast_nullable_to_non_nullable
              as String,
      extId: null == extId
          ? _value.extId
          : extId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommissionModelCopyWith<$Res>? get commissionModel {
    if (_value.commissionModel == null) {
      return null;
    }

    return $CommissionModelCopyWith<$Res>(_value.commissionModel!, (value) {
      return _then(_value.copyWith(commissionModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AmountStateImplCopyWith<$Res>
    implements $AmountStateCopyWith<$Res> {
  factory _$$AmountStateImplCopyWith(
          _$AmountStateImpl value, $Res Function(_$AmountStateImpl) then) =
      __$$AmountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NetworkStatus networkStatus,
      NetworkStatus transferNetworkStatus,
      NetworkStatus commissionNetworkStatus,
      CommissionModel? commissionModel,
      String transferLink,
      String extId,
      double amount,
      String receiverCard,
      String receiverName,
      String error});

  @override
  $CommissionModelCopyWith<$Res>? get commissionModel;
}

/// @nodoc
class __$$AmountStateImplCopyWithImpl<$Res>
    extends _$AmountStateCopyWithImpl<$Res, _$AmountStateImpl>
    implements _$$AmountStateImplCopyWith<$Res> {
  __$$AmountStateImplCopyWithImpl(
      _$AmountStateImpl _value, $Res Function(_$AmountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? networkStatus = null,
    Object? transferNetworkStatus = null,
    Object? commissionNetworkStatus = null,
    Object? commissionModel = freezed,
    Object? transferLink = null,
    Object? extId = null,
    Object? amount = null,
    Object? receiverCard = null,
    Object? receiverName = null,
    Object? error = null,
  }) {
    return _then(_$AmountStateImpl(
      networkStatus: null == networkStatus
          ? _value.networkStatus
          : networkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      transferNetworkStatus: null == transferNetworkStatus
          ? _value.transferNetworkStatus
          : transferNetworkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      commissionNetworkStatus: null == commissionNetworkStatus
          ? _value.commissionNetworkStatus
          : commissionNetworkStatus // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
      commissionModel: freezed == commissionModel
          ? _value.commissionModel
          : commissionModel // ignore: cast_nullable_to_non_nullable
              as CommissionModel?,
      transferLink: null == transferLink
          ? _value.transferLink
          : transferLink // ignore: cast_nullable_to_non_nullable
              as String,
      extId: null == extId
          ? _value.extId
          : extId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AmountStateImpl implements _AmountState {
  const _$AmountStateImpl(
      {required this.networkStatus,
      required this.transferNetworkStatus,
      required this.commissionNetworkStatus,
      required this.commissionModel,
      required this.transferLink,
      required this.extId,
      required this.amount,
      required this.receiverCard,
      required this.receiverName,
      required this.error});

  @override
  final NetworkStatus networkStatus;
  @override
  final NetworkStatus transferNetworkStatus;
  @override
  final NetworkStatus commissionNetworkStatus;
  @override
  final CommissionModel? commissionModel;
  @override
  final String transferLink;
  @override
  final String extId;
  @override
  final double amount;
  @override
  final String receiverCard;
  @override
  final String receiverName;
  @override
  final String error;

  @override
  String toString() {
    return 'AmountState(networkStatus: $networkStatus, transferNetworkStatus: $transferNetworkStatus, commissionNetworkStatus: $commissionNetworkStatus, commissionModel: $commissionModel, transferLink: $transferLink, extId: $extId, amount: $amount, receiverCard: $receiverCard, receiverName: $receiverName, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AmountStateImpl &&
            (identical(other.networkStatus, networkStatus) ||
                other.networkStatus == networkStatus) &&
            (identical(other.transferNetworkStatus, transferNetworkStatus) ||
                other.transferNetworkStatus == transferNetworkStatus) &&
            (identical(
                    other.commissionNetworkStatus, commissionNetworkStatus) ||
                other.commissionNetworkStatus == commissionNetworkStatus) &&
            (identical(other.commissionModel, commissionModel) ||
                other.commissionModel == commissionModel) &&
            (identical(other.transferLink, transferLink) ||
                other.transferLink == transferLink) &&
            (identical(other.extId, extId) || other.extId == extId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.receiverCard, receiverCard) ||
                other.receiverCard == receiverCard) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      networkStatus,
      transferNetworkStatus,
      commissionNetworkStatus,
      commissionModel,
      transferLink,
      extId,
      amount,
      receiverCard,
      receiverName,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AmountStateImplCopyWith<_$AmountStateImpl> get copyWith =>
      __$$AmountStateImplCopyWithImpl<_$AmountStateImpl>(this, _$identity);
}

abstract class _AmountState implements AmountState {
  const factory _AmountState(
      {required final NetworkStatus networkStatus,
      required final NetworkStatus transferNetworkStatus,
      required final NetworkStatus commissionNetworkStatus,
      required final CommissionModel? commissionModel,
      required final String transferLink,
      required final String extId,
      required final double amount,
      required final String receiverCard,
      required final String receiverName,
      required final String error}) = _$AmountStateImpl;

  @override
  NetworkStatus get networkStatus;
  @override
  NetworkStatus get transferNetworkStatus;
  @override
  NetworkStatus get commissionNetworkStatus;
  @override
  CommissionModel? get commissionModel;
  @override
  String get transferLink;
  @override
  String get extId;
  @override
  double get amount;
  @override
  String get receiverCard;
  @override
  String get receiverName;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$AmountStateImplCopyWith<_$AmountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
