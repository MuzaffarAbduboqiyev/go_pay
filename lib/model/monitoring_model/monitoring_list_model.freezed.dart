// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MonitoringListModel _$MonitoringListModelFromJson(Map<String, dynamic> json) {
  return _MonitoringListModel.fromJson(json);
}

/// @nodoc
mixin _$MonitoringListModel {
  @JsonKey(name: 'data', defaultValue: [])
  List<MonitoringModel>? get monitoringList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonitoringListModelCopyWith<MonitoringListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitoringListModelCopyWith<$Res> {
  factory $MonitoringListModelCopyWith(
          MonitoringListModel value, $Res Function(MonitoringListModel) then) =
      _$MonitoringListModelCopyWithImpl<$Res, MonitoringListModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: [])
      List<MonitoringModel>? monitoringList});
}

/// @nodoc
class _$MonitoringListModelCopyWithImpl<$Res, $Val extends MonitoringListModel>
    implements $MonitoringListModelCopyWith<$Res> {
  _$MonitoringListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monitoringList = freezed,
  }) {
    return _then(_value.copyWith(
      monitoringList: freezed == monitoringList
          ? _value.monitoringList
          : monitoringList // ignore: cast_nullable_to_non_nullable
              as List<MonitoringModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonitoringListModelImplCopyWith<$Res>
    implements $MonitoringListModelCopyWith<$Res> {
  factory _$$MonitoringListModelImplCopyWith(_$MonitoringListModelImpl value,
          $Res Function(_$MonitoringListModelImpl) then) =
      __$$MonitoringListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'data', defaultValue: [])
      List<MonitoringModel>? monitoringList});
}

/// @nodoc
class __$$MonitoringListModelImplCopyWithImpl<$Res>
    extends _$MonitoringListModelCopyWithImpl<$Res, _$MonitoringListModelImpl>
    implements _$$MonitoringListModelImplCopyWith<$Res> {
  __$$MonitoringListModelImplCopyWithImpl(_$MonitoringListModelImpl _value,
      $Res Function(_$MonitoringListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monitoringList = freezed,
  }) {
    return _then(_$MonitoringListModelImpl(
      monitoringList: freezed == monitoringList
          ? _value.monitoringList
          : monitoringList // ignore: cast_nullable_to_non_nullable
              as List<MonitoringModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MonitoringListModelImpl implements _MonitoringListModel {
  const _$MonitoringListModelImpl(
      {@JsonKey(name: 'data', defaultValue: []) required this.monitoringList});

  factory _$MonitoringListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MonitoringListModelImplFromJson(json);

  @override
  @JsonKey(name: 'data', defaultValue: [])
  final List<MonitoringModel>? monitoringList;

  @override
  String toString() {
    return 'MonitoringListModel(monitoringList: $monitoringList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringListModelImpl &&
            const DeepCollectionEquality()
                .equals(other.monitoringList, monitoringList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(monitoringList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringListModelImplCopyWith<_$MonitoringListModelImpl> get copyWith =>
      __$$MonitoringListModelImplCopyWithImpl<_$MonitoringListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MonitoringListModelImplToJson(
      this,
    );
  }
}

abstract class _MonitoringListModel implements MonitoringListModel {
  const factory _MonitoringListModel(
          {@JsonKey(name: 'data', defaultValue: [])
          required final List<MonitoringModel>? monitoringList}) =
      _$MonitoringListModelImpl;

  factory _MonitoringListModel.fromJson(Map<String, dynamic> json) =
      _$MonitoringListModelImpl.fromJson;

  @override
  @JsonKey(name: 'data', defaultValue: [])
  List<MonitoringModel>? get monitoringList;
  @override
  @JsonKey(ignore: true)
  _$$MonitoringListModelImplCopyWith<_$MonitoringListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
