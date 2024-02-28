// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'monitoring_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonitoringEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonitoringEventCopyWith<$Res> {
  factory $MonitoringEventCopyWith(
          MonitoringEvent value, $Res Function(MonitoringEvent) then) =
      _$MonitoringEventCopyWithImpl<$Res, MonitoringEvent>;
}

/// @nodoc
class _$MonitoringEventCopyWithImpl<$Res, $Val extends MonitoringEvent>
    implements $MonitoringEventCopyWith<$Res> {
  _$MonitoringEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MonitoringInitialEventImplCopyWith<$Res> {
  factory _$$MonitoringInitialEventImplCopyWith(
          _$MonitoringInitialEventImpl value,
          $Res Function(_$MonitoringInitialEventImpl) then) =
      __$$MonitoringInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonitoringInitialEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res, _$MonitoringInitialEventImpl>
    implements _$$MonitoringInitialEventImplCopyWith<$Res> {
  __$$MonitoringInitialEventImplCopyWithImpl(
      _$MonitoringInitialEventImpl _value,
      $Res Function(_$MonitoringInitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonitoringInitialEventImpl implements MonitoringInitialEvent {
  const _$MonitoringInitialEventImpl();

  @override
  String toString() {
    return 'MonitoringEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MonitoringInitialEvent implements MonitoringEvent {
  const factory MonitoringInitialEvent() = _$MonitoringInitialEventImpl;
}

/// @nodoc
abstract class _$$MonitoringDateFilterEventImplCopyWith<$Res> {
  factory _$$MonitoringDateFilterEventImplCopyWith(
          _$MonitoringDateFilterEventImpl value,
          $Res Function(_$MonitoringDateFilterEventImpl) then) =
      __$$MonitoringDateFilterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFrom, String date});
}

/// @nodoc
class __$$MonitoringDateFilterEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res, _$MonitoringDateFilterEventImpl>
    implements _$$MonitoringDateFilterEventImplCopyWith<$Res> {
  __$$MonitoringDateFilterEventImplCopyWithImpl(
      _$MonitoringDateFilterEventImpl _value,
      $Res Function(_$MonitoringDateFilterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFrom = null,
    Object? date = null,
  }) {
    return _then(_$MonitoringDateFilterEventImpl(
      isFrom: null == isFrom
          ? _value.isFrom
          : isFrom // ignore: cast_nullable_to_non_nullable
              as bool,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MonitoringDateFilterEventImpl implements MonitoringDateFilterEvent {
  const _$MonitoringDateFilterEventImpl(
      {required this.isFrom, required this.date});

  @override
  final bool isFrom;
  @override
  final String date;

  @override
  String toString() {
    return 'MonitoringEvent.dateFilter(isFrom: $isFrom, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringDateFilterEventImpl &&
            (identical(other.isFrom, isFrom) || other.isFrom == isFrom) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFrom, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MonitoringDateFilterEventImplCopyWith<_$MonitoringDateFilterEventImpl>
      get copyWith => __$$MonitoringDateFilterEventImplCopyWithImpl<
          _$MonitoringDateFilterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return dateFilter(isFrom, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return dateFilter?.call(isFrom, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (dateFilter != null) {
      return dateFilter(isFrom, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return dateFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return dateFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (dateFilter != null) {
      return dateFilter(this);
    }
    return orElse();
  }
}

abstract class MonitoringDateFilterEvent implements MonitoringEvent {
  const factory MonitoringDateFilterEvent(
      {required final bool isFrom,
      required final String date}) = _$MonitoringDateFilterEventImpl;

  bool get isFrom;
  String get date;
  @JsonKey(ignore: true)
  _$$MonitoringDateFilterEventImplCopyWith<_$MonitoringDateFilterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MonitoringClearEventImplCopyWith<$Res> {
  factory _$$MonitoringClearEventImplCopyWith(_$MonitoringClearEventImpl value,
          $Res Function(_$MonitoringClearEventImpl) then) =
      __$$MonitoringClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonitoringClearEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res, _$MonitoringClearEventImpl>
    implements _$$MonitoringClearEventImplCopyWith<$Res> {
  __$$MonitoringClearEventImplCopyWithImpl(_$MonitoringClearEventImpl _value,
      $Res Function(_$MonitoringClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonitoringClearEventImpl implements MonitoringClearEvent {
  const _$MonitoringClearEventImpl();

  @override
  String toString() {
    return 'MonitoringEvent.clear()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return clear();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return clear?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return clear(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return clear?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (clear != null) {
      return clear(this);
    }
    return orElse();
  }
}

abstract class MonitoringClearEvent implements MonitoringEvent {
  const factory MonitoringClearEvent() = _$MonitoringClearEventImpl;
}

/// @nodoc
abstract class _$$MonitoringRefreshEventImplCopyWith<$Res> {
  factory _$$MonitoringRefreshEventImplCopyWith(
          _$MonitoringRefreshEventImpl value,
          $Res Function(_$MonitoringRefreshEventImpl) then) =
      __$$MonitoringRefreshEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonitoringRefreshEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res, _$MonitoringRefreshEventImpl>
    implements _$$MonitoringRefreshEventImplCopyWith<$Res> {
  __$$MonitoringRefreshEventImplCopyWithImpl(
      _$MonitoringRefreshEventImpl _value,
      $Res Function(_$MonitoringRefreshEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonitoringRefreshEventImpl implements MonitoringRefreshEvent {
  const _$MonitoringRefreshEventImpl();

  @override
  String toString() {
    return 'MonitoringEvent.refresh()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringRefreshEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class MonitoringRefreshEvent implements MonitoringEvent {
  const factory MonitoringRefreshEvent() = _$MonitoringRefreshEventImpl;
}

/// @nodoc
abstract class _$$MonitoringLoadNextPageEventImplCopyWith<$Res> {
  factory _$$MonitoringLoadNextPageEventImplCopyWith(
          _$MonitoringLoadNextPageEventImpl value,
          $Res Function(_$MonitoringLoadNextPageEventImpl) then) =
      __$$MonitoringLoadNextPageEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonitoringLoadNextPageEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res,
        _$MonitoringLoadNextPageEventImpl>
    implements _$$MonitoringLoadNextPageEventImplCopyWith<$Res> {
  __$$MonitoringLoadNextPageEventImplCopyWithImpl(
      _$MonitoringLoadNextPageEventImpl _value,
      $Res Function(_$MonitoringLoadNextPageEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonitoringLoadNextPageEventImpl implements MonitoringLoadNextPageEvent {
  const _$MonitoringLoadNextPageEventImpl();

  @override
  String toString() {
    return 'MonitoringEvent.loadNextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringLoadNextPageEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return loadNextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return loadNextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return loadNextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return loadNextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (loadNextPage != null) {
      return loadNextPage(this);
    }
    return orElse();
  }
}

abstract class MonitoringLoadNextPageEvent implements MonitoringEvent {
  const factory MonitoringLoadNextPageEvent() =
      _$MonitoringLoadNextPageEventImpl;
}

/// @nodoc
abstract class _$$MonitoringFilterEventImplCopyWith<$Res> {
  factory _$$MonitoringFilterEventImplCopyWith(
          _$MonitoringFilterEventImpl value,
          $Res Function(_$MonitoringFilterEventImpl) then) =
      __$$MonitoringFilterEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonitoringFilterEventImplCopyWithImpl<$Res>
    extends _$MonitoringEventCopyWithImpl<$Res, _$MonitoringFilterEventImpl>
    implements _$$MonitoringFilterEventImplCopyWith<$Res> {
  __$$MonitoringFilterEventImplCopyWithImpl(_$MonitoringFilterEventImpl _value,
      $Res Function(_$MonitoringFilterEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MonitoringFilterEventImpl implements MonitoringFilterEvent {
  const _$MonitoringFilterEventImpl();

  @override
  String toString() {
    return 'MonitoringEvent.filter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonitoringFilterEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isFrom, String date) dateFilter,
    required TResult Function() clear,
    required TResult Function() refresh,
    required TResult Function() loadNextPage,
    required TResult Function() filter,
  }) {
    return filter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isFrom, String date)? dateFilter,
    TResult? Function()? clear,
    TResult? Function()? refresh,
    TResult? Function()? loadNextPage,
    TResult? Function()? filter,
  }) {
    return filter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isFrom, String date)? dateFilter,
    TResult Function()? clear,
    TResult Function()? refresh,
    TResult Function()? loadNextPage,
    TResult Function()? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MonitoringInitialEvent value) initial,
    required TResult Function(MonitoringDateFilterEvent value) dateFilter,
    required TResult Function(MonitoringClearEvent value) clear,
    required TResult Function(MonitoringRefreshEvent value) refresh,
    required TResult Function(MonitoringLoadNextPageEvent value) loadNextPage,
    required TResult Function(MonitoringFilterEvent value) filter,
  }) {
    return filter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MonitoringInitialEvent value)? initial,
    TResult? Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult? Function(MonitoringClearEvent value)? clear,
    TResult? Function(MonitoringRefreshEvent value)? refresh,
    TResult? Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult? Function(MonitoringFilterEvent value)? filter,
  }) {
    return filter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MonitoringInitialEvent value)? initial,
    TResult Function(MonitoringDateFilterEvent value)? dateFilter,
    TResult Function(MonitoringClearEvent value)? clear,
    TResult Function(MonitoringRefreshEvent value)? refresh,
    TResult Function(MonitoringLoadNextPageEvent value)? loadNextPage,
    TResult Function(MonitoringFilterEvent value)? filter,
    required TResult orElse(),
  }) {
    if (filter != null) {
      return filter(this);
    }
    return orElse();
  }
}

abstract class MonitoringFilterEvent implements MonitoringEvent {
  const factory MonitoringFilterEvent() = _$MonitoringFilterEventImpl;
}
