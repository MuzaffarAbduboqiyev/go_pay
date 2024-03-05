// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'commission_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommissionModel _$CommissionModelFromJson(Map<String, dynamic> json) {
  return _CommissionModel.fromJson(json);
}

/// @nodoc
mixin _$CommissionModel {
  @JsonKey(name: 'id', defaultValue: 0)
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'min', defaultValue: 0)
  double? get min => throw _privateConstructorUsedError;
  @JsonKey(name: 'max', defaultValue: 0)
  double? get max => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_verified', defaultValue: 0)
  int? get maxVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'oper_type', defaultValue: 0)
  int? get operationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_ub_p', defaultValue: 0)
  int? get comUbP => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_ub_c', defaultValue: 0)
  int? get comUbC => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_mts_p', defaultValue: 0)
  int? get comMtsP => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_mts_c', defaultValue: 0)
  int? get comMtsC => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_partner_p', defaultValue: 0)
  int? get comPartnerP => throw _privateConstructorUsedError;
  @JsonKey(name: 'com_partner_c', defaultValue: 0)
  int? get comPartnerC => throw _privateConstructorUsedError;
  @JsonKey(name: 'rate', defaultValue: 0)
  double? get rate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommissionModelCopyWith<CommissionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommissionModelCopyWith<$Res> {
  factory $CommissionModelCopyWith(
          CommissionModel value, $Res Function(CommissionModel) then) =
      _$CommissionModelCopyWithImpl<$Res, CommissionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int? id,
      @JsonKey(name: 'min', defaultValue: 0) double? min,
      @JsonKey(name: 'max', defaultValue: 0) double? max,
      @JsonKey(name: 'max_verified', defaultValue: 0) int? maxVerified,
      @JsonKey(name: 'oper_type', defaultValue: 0) int? operationType,
      @JsonKey(name: 'com_ub_p', defaultValue: 0) int? comUbP,
      @JsonKey(name: 'com_ub_c', defaultValue: 0) int? comUbC,
      @JsonKey(name: 'com_mts_p', defaultValue: 0) int? comMtsP,
      @JsonKey(name: 'com_mts_c', defaultValue: 0) int? comMtsC,
      @JsonKey(name: 'com_partner_p', defaultValue: 0) int? comPartnerP,
      @JsonKey(name: 'com_partner_c', defaultValue: 0) int? comPartnerC,
      @JsonKey(name: 'rate', defaultValue: 0) double? rate});
}

/// @nodoc
class _$CommissionModelCopyWithImpl<$Res, $Val extends CommissionModel>
    implements $CommissionModelCopyWith<$Res> {
  _$CommissionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? maxVerified = freezed,
    Object? operationType = freezed,
    Object? comUbP = freezed,
    Object? comUbC = freezed,
    Object? comMtsP = freezed,
    Object? comMtsC = freezed,
    Object? comPartnerP = freezed,
    Object? comPartnerC = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      maxVerified: freezed == maxVerified
          ? _value.maxVerified
          : maxVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as int?,
      comUbP: freezed == comUbP
          ? _value.comUbP
          : comUbP // ignore: cast_nullable_to_non_nullable
              as int?,
      comUbC: freezed == comUbC
          ? _value.comUbC
          : comUbC // ignore: cast_nullable_to_non_nullable
              as int?,
      comMtsP: freezed == comMtsP
          ? _value.comMtsP
          : comMtsP // ignore: cast_nullable_to_non_nullable
              as int?,
      comMtsC: freezed == comMtsC
          ? _value.comMtsC
          : comMtsC // ignore: cast_nullable_to_non_nullable
              as int?,
      comPartnerP: freezed == comPartnerP
          ? _value.comPartnerP
          : comPartnerP // ignore: cast_nullable_to_non_nullable
              as int?,
      comPartnerC: freezed == comPartnerC
          ? _value.comPartnerC
          : comPartnerC // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommissionModelImplCopyWith<$Res>
    implements $CommissionModelCopyWith<$Res> {
  factory _$$CommissionModelImplCopyWith(_$CommissionModelImpl value,
          $Res Function(_$CommissionModelImpl) then) =
      __$$CommissionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id', defaultValue: 0) int? id,
      @JsonKey(name: 'min', defaultValue: 0) double? min,
      @JsonKey(name: 'max', defaultValue: 0) double? max,
      @JsonKey(name: 'max_verified', defaultValue: 0) int? maxVerified,
      @JsonKey(name: 'oper_type', defaultValue: 0) int? operationType,
      @JsonKey(name: 'com_ub_p', defaultValue: 0) int? comUbP,
      @JsonKey(name: 'com_ub_c', defaultValue: 0) int? comUbC,
      @JsonKey(name: 'com_mts_p', defaultValue: 0) int? comMtsP,
      @JsonKey(name: 'com_mts_c', defaultValue: 0) int? comMtsC,
      @JsonKey(name: 'com_partner_p', defaultValue: 0) int? comPartnerP,
      @JsonKey(name: 'com_partner_c', defaultValue: 0) int? comPartnerC,
      @JsonKey(name: 'rate', defaultValue: 0) double? rate});
}

/// @nodoc
class __$$CommissionModelImplCopyWithImpl<$Res>
    extends _$CommissionModelCopyWithImpl<$Res, _$CommissionModelImpl>
    implements _$$CommissionModelImplCopyWith<$Res> {
  __$$CommissionModelImplCopyWithImpl(
      _$CommissionModelImpl _value, $Res Function(_$CommissionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? min = freezed,
    Object? max = freezed,
    Object? maxVerified = freezed,
    Object? operationType = freezed,
    Object? comUbP = freezed,
    Object? comUbC = freezed,
    Object? comMtsP = freezed,
    Object? comMtsC = freezed,
    Object? comPartnerP = freezed,
    Object? comPartnerC = freezed,
    Object? rate = freezed,
  }) {
    return _then(_$CommissionModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      min: freezed == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double?,
      max: freezed == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double?,
      maxVerified: freezed == maxVerified
          ? _value.maxVerified
          : maxVerified // ignore: cast_nullable_to_non_nullable
              as int?,
      operationType: freezed == operationType
          ? _value.operationType
          : operationType // ignore: cast_nullable_to_non_nullable
              as int?,
      comUbP: freezed == comUbP
          ? _value.comUbP
          : comUbP // ignore: cast_nullable_to_non_nullable
              as int?,
      comUbC: freezed == comUbC
          ? _value.comUbC
          : comUbC // ignore: cast_nullable_to_non_nullable
              as int?,
      comMtsP: freezed == comMtsP
          ? _value.comMtsP
          : comMtsP // ignore: cast_nullable_to_non_nullable
              as int?,
      comMtsC: freezed == comMtsC
          ? _value.comMtsC
          : comMtsC // ignore: cast_nullable_to_non_nullable
              as int?,
      comPartnerP: freezed == comPartnerP
          ? _value.comPartnerP
          : comPartnerP // ignore: cast_nullable_to_non_nullable
              as int?,
      comPartnerC: freezed == comPartnerC
          ? _value.comPartnerC
          : comPartnerC // ignore: cast_nullable_to_non_nullable
              as int?,
      rate: freezed == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommissionModelImpl implements _CommissionModel {
  const _$CommissionModelImpl(
      {@JsonKey(name: 'id', defaultValue: 0) required this.id,
      @JsonKey(name: 'min', defaultValue: 0) required this.min,
      @JsonKey(name: 'max', defaultValue: 0) required this.max,
      @JsonKey(name: 'max_verified', defaultValue: 0) required this.maxVerified,
      @JsonKey(name: 'oper_type', defaultValue: 0) required this.operationType,
      @JsonKey(name: 'com_ub_p', defaultValue: 0) required this.comUbP,
      @JsonKey(name: 'com_ub_c', defaultValue: 0) required this.comUbC,
      @JsonKey(name: 'com_mts_p', defaultValue: 0) required this.comMtsP,
      @JsonKey(name: 'com_mts_c', defaultValue: 0) required this.comMtsC,
      @JsonKey(name: 'com_partner_p', defaultValue: 0)
      required this.comPartnerP,
      @JsonKey(name: 'com_partner_c', defaultValue: 0)
      required this.comPartnerC,
      @JsonKey(name: 'rate', defaultValue: 0) required this.rate});

  factory _$CommissionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommissionModelImplFromJson(json);

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  final int? id;
  @override
  @JsonKey(name: 'min', defaultValue: 0)
  final double? min;
  @override
  @JsonKey(name: 'max', defaultValue: 0)
  final double? max;
  @override
  @JsonKey(name: 'max_verified', defaultValue: 0)
  final int? maxVerified;
  @override
  @JsonKey(name: 'oper_type', defaultValue: 0)
  final int? operationType;
  @override
  @JsonKey(name: 'com_ub_p', defaultValue: 0)
  final int? comUbP;
  @override
  @JsonKey(name: 'com_ub_c', defaultValue: 0)
  final int? comUbC;
  @override
  @JsonKey(name: 'com_mts_p', defaultValue: 0)
  final int? comMtsP;
  @override
  @JsonKey(name: 'com_mts_c', defaultValue: 0)
  final int? comMtsC;
  @override
  @JsonKey(name: 'com_partner_p', defaultValue: 0)
  final int? comPartnerP;
  @override
  @JsonKey(name: 'com_partner_c', defaultValue: 0)
  final int? comPartnerC;
  @override
  @JsonKey(name: 'rate', defaultValue: 0)
  final double? rate;

  @override
  String toString() {
    return 'CommissionModel(id: $id, min: $min, max: $max, maxVerified: $maxVerified, operationType: $operationType, comUbP: $comUbP, comUbC: $comUbC, comMtsP: $comMtsP, comMtsC: $comMtsC, comPartnerP: $comPartnerP, comPartnerC: $comPartnerC, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommissionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.maxVerified, maxVerified) ||
                other.maxVerified == maxVerified) &&
            (identical(other.operationType, operationType) ||
                other.operationType == operationType) &&
            (identical(other.comUbP, comUbP) || other.comUbP == comUbP) &&
            (identical(other.comUbC, comUbC) || other.comUbC == comUbC) &&
            (identical(other.comMtsP, comMtsP) || other.comMtsP == comMtsP) &&
            (identical(other.comMtsC, comMtsC) || other.comMtsC == comMtsC) &&
            (identical(other.comPartnerP, comPartnerP) ||
                other.comPartnerP == comPartnerP) &&
            (identical(other.comPartnerC, comPartnerC) ||
                other.comPartnerC == comPartnerC) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      min,
      max,
      maxVerified,
      operationType,
      comUbP,
      comUbC,
      comMtsP,
      comMtsC,
      comPartnerP,
      comPartnerC,
      rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommissionModelImplCopyWith<_$CommissionModelImpl> get copyWith =>
      __$$CommissionModelImplCopyWithImpl<_$CommissionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommissionModelImplToJson(
      this,
    );
  }
}

abstract class _CommissionModel implements CommissionModel {
  const factory _CommissionModel(
      {@JsonKey(name: 'id', defaultValue: 0) required final int? id,
      @JsonKey(name: 'min', defaultValue: 0) required final double? min,
      @JsonKey(name: 'max', defaultValue: 0) required final double? max,
      @JsonKey(name: 'max_verified', defaultValue: 0)
      required final int? maxVerified,
      @JsonKey(name: 'oper_type', defaultValue: 0)
      required final int? operationType,
      @JsonKey(name: 'com_ub_p', defaultValue: 0) required final int? comUbP,
      @JsonKey(name: 'com_ub_c', defaultValue: 0) required final int? comUbC,
      @JsonKey(name: 'com_mts_p', defaultValue: 0) required final int? comMtsP,
      @JsonKey(name: 'com_mts_c', defaultValue: 0) required final int? comMtsC,
      @JsonKey(name: 'com_partner_p', defaultValue: 0)
      required final int? comPartnerP,
      @JsonKey(name: 'com_partner_c', defaultValue: 0)
      required final int? comPartnerC,
      @JsonKey(name: 'rate', defaultValue: 0)
      required final double? rate}) = _$CommissionModelImpl;

  factory _CommissionModel.fromJson(Map<String, dynamic> json) =
      _$CommissionModelImpl.fromJson;

  @override
  @JsonKey(name: 'id', defaultValue: 0)
  int? get id;
  @override
  @JsonKey(name: 'min', defaultValue: 0)
  double? get min;
  @override
  @JsonKey(name: 'max', defaultValue: 0)
  double? get max;
  @override
  @JsonKey(name: 'max_verified', defaultValue: 0)
  int? get maxVerified;
  @override
  @JsonKey(name: 'oper_type', defaultValue: 0)
  int? get operationType;
  @override
  @JsonKey(name: 'com_ub_p', defaultValue: 0)
  int? get comUbP;
  @override
  @JsonKey(name: 'com_ub_c', defaultValue: 0)
  int? get comUbC;
  @override
  @JsonKey(name: 'com_mts_p', defaultValue: 0)
  int? get comMtsP;
  @override
  @JsonKey(name: 'com_mts_c', defaultValue: 0)
  int? get comMtsC;
  @override
  @JsonKey(name: 'com_partner_p', defaultValue: 0)
  int? get comPartnerP;
  @override
  @JsonKey(name: 'com_partner_c', defaultValue: 0)
  int? get comPartnerC;
  @override
  @JsonKey(name: 'rate', defaultValue: 0)
  double? get rate;
  @override
  @JsonKey(ignore: true)
  _$$CommissionModelImplCopyWith<_$CommissionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
