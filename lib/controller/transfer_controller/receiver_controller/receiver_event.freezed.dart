// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receiver_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReceiverEvent {
  String get receiverCard => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard) receiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard)? receiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard)? receiver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiverReceiverEvent value) receiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReceiverReceiverEvent value)? receiver,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiverReceiverEvent value)? receiver,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReceiverEventCopyWith<ReceiverEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverEventCopyWith<$Res> {
  factory $ReceiverEventCopyWith(
          ReceiverEvent value, $Res Function(ReceiverEvent) then) =
      _$ReceiverEventCopyWithImpl<$Res, ReceiverEvent>;
  @useResult
  $Res call({String receiverCard});
}

/// @nodoc
class _$ReceiverEventCopyWithImpl<$Res, $Val extends ReceiverEvent>
    implements $ReceiverEventCopyWith<$Res> {
  _$ReceiverEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverCard = null,
  }) {
    return _then(_value.copyWith(
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReceiverReceiverEventImplCopyWith<$Res>
    implements $ReceiverEventCopyWith<$Res> {
  factory _$$ReceiverReceiverEventImplCopyWith(
          _$ReceiverReceiverEventImpl value,
          $Res Function(_$ReceiverReceiverEventImpl) then) =
      __$$ReceiverReceiverEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String receiverCard});
}

/// @nodoc
class __$$ReceiverReceiverEventImplCopyWithImpl<$Res>
    extends _$ReceiverEventCopyWithImpl<$Res, _$ReceiverReceiverEventImpl>
    implements _$$ReceiverReceiverEventImplCopyWith<$Res> {
  __$$ReceiverReceiverEventImplCopyWithImpl(_$ReceiverReceiverEventImpl _value,
      $Res Function(_$ReceiverReceiverEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receiverCard = null,
  }) {
    return _then(_$ReceiverReceiverEventImpl(
      receiverCard: null == receiverCard
          ? _value.receiverCard
          : receiverCard // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReceiverReceiverEventImpl implements ReceiverReceiverEvent {
  const _$ReceiverReceiverEventImpl({required this.receiverCard});

  @override
  final String receiverCard;

  @override
  String toString() {
    return 'ReceiverEvent.receiver(receiverCard: $receiverCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverReceiverEventImpl &&
            (identical(other.receiverCard, receiverCard) ||
                other.receiverCard == receiverCard));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receiverCard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverReceiverEventImplCopyWith<_$ReceiverReceiverEventImpl>
      get copyWith => __$$ReceiverReceiverEventImplCopyWithImpl<
          _$ReceiverReceiverEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String receiverCard) receiver,
  }) {
    return receiver(receiverCard);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String receiverCard)? receiver,
  }) {
    return receiver?.call(receiverCard);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String receiverCard)? receiver,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver(receiverCard);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReceiverReceiverEvent value) receiver,
  }) {
    return receiver(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReceiverReceiverEvent value)? receiver,
  }) {
    return receiver?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReceiverReceiverEvent value)? receiver,
    required TResult orElse(),
  }) {
    if (receiver != null) {
      return receiver(this);
    }
    return orElse();
  }
}

abstract class ReceiverReceiverEvent implements ReceiverEvent {
  const factory ReceiverReceiverEvent({required final String receiverCard}) =
      _$ReceiverReceiverEventImpl;

  @override
  String get receiverCard;
  @override
  @JsonKey(ignore: true)
  _$$ReceiverReceiverEventImplCopyWith<_$ReceiverReceiverEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
