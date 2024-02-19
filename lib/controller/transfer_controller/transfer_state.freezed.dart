// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransferState {
  String get senderName => throw _privateConstructorUsedError;
  String get senderPhone => throw _privateConstructorUsedError;
  String get receiverName => throw _privateConstructorUsedError;
  String get receiverCard => throw _privateConstructorUsedError;
  String get amount => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransferStateCopyWith<TransferState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferStateCopyWith<$Res> {
  factory $TransferStateCopyWith(
          TransferState value, $Res Function(TransferState) then) =
      _$TransferStateCopyWithImpl<$Res, TransferState>;
  @useResult
  $Res call(
      {String senderName,
      String senderPhone,
      String receiverName,
      String receiverCard,
      String amount,
      String note,
      String error});
}

/// @nodoc
class _$TransferStateCopyWithImpl<$Res, $Val extends TransferState>
    implements $TransferStateCopyWith<$Res> {
  _$TransferStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderPhone = null,
    Object? receiverName = null,
    Object? receiverCard = null,
    Object? amount = null,
    Object? note = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderPhone: null == senderPhone
          ? _value.senderPhone
          : senderPhone // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransferStateImplCopyWith<$Res>
    implements $TransferStateCopyWith<$Res> {
  factory _$$TransferStateImplCopyWith(
          _$TransferStateImpl value, $Res Function(_$TransferStateImpl) then) =
      __$$TransferStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String senderName,
      String senderPhone,
      String receiverName,
      String receiverCard,
      String amount,
      String note,
      String error});
}

/// @nodoc
class __$$TransferStateImplCopyWithImpl<$Res>
    extends _$TransferStateCopyWithImpl<$Res, _$TransferStateImpl>
    implements _$$TransferStateImplCopyWith<$Res> {
  __$$TransferStateImplCopyWithImpl(
      _$TransferStateImpl _value, $Res Function(_$TransferStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? senderName = null,
    Object? senderPhone = null,
    Object? receiverName = null,
    Object? receiverCard = null,
    Object? amount = null,
    Object? note = null,
    Object? error = null,
  }) {
    return _then(_$TransferStateImpl(
      senderName: null == senderName
          ? _value.senderName
          : senderName // ignore: cast_nullable_to_non_nullable
              as String,
      senderPhone: null == senderPhone
          ? _value.senderPhone
          : senderPhone // ignore: cast_nullable_to_non_nullable
              as String,
      receiverName: null == receiverName
          ? _value.receiverName
          : receiverName // ignore: cast_nullable_to_non_nullable
              as String,
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransferStateImpl implements _TransferState {
  const _$TransferStateImpl(
      {required this.senderName,
      required this.senderPhone,
      required this.receiverName,
      required this.receiverCard,
      required this.amount,
      required this.note,
      required this.error});

  @override
  final String senderName;
  @override
  final String senderPhone;
  @override
  final String receiverName;
  @override
  final String receiverCard;
  @override
  final String amount;
  @override
  final String note;
  @override
  final String error;

  @override
  String toString() {
    return 'TransferState(senderName: $senderName, senderPhone: $senderPhone, receiverName: $receiverName, receiverCard: $receiverCard, amount: $amount, note: $note, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransferStateImpl &&
            (identical(other.senderName, senderName) ||
                other.senderName == senderName) &&
            (identical(other.senderPhone, senderPhone) ||
                other.senderPhone == senderPhone) &&
            (identical(other.receiverName, receiverName) ||
                other.receiverName == receiverName) &&
            (identical(other.receiverCard, receiverCard) ||
                other.receiverCard == receiverCard) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, senderName, senderPhone,
      receiverName, receiverCard, amount, note, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransferStateImplCopyWith<_$TransferStateImpl> get copyWith =>
      __$$TransferStateImplCopyWithImpl<_$TransferStateImpl>(this, _$identity);
}

abstract class _TransferState implements TransferState {
  const factory _TransferState(
      {required final String senderName,
      required final String senderPhone,
      required final String receiverName,
      required final String receiverCard,
      required final String amount,
      required final String note,
      required final String error}) = _$TransferStateImpl;

  @override
  String get senderName;
  @override
  String get senderPhone;
  @override
  String get receiverName;
  @override
  String get receiverCard;
  @override
  String get amount;
  @override
  String get note;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$TransferStateImplCopyWith<_$TransferStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
