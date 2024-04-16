// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'context_activity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContextActivityEvent {
  ContextActivityCallback get callback => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContextActivityCallback callback)
        handleContextActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContextActivityCallback callback)? handleContextActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContextActivityCallback callback)? handleContextActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HandleContextActivityEvent value)
        handleContextActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HandleContextActivityEvent value)? handleContextActivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HandleContextActivityEvent value)? handleContextActivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContextActivityEventCopyWith<ContextActivityEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextActivityEventCopyWith<$Res> {
  factory $ContextActivityEventCopyWith(ContextActivityEvent value,
          $Res Function(ContextActivityEvent) then) =
      _$ContextActivityEventCopyWithImpl<$Res, ContextActivityEvent>;
  @useResult
  $Res call({ContextActivityCallback callback});
}

/// @nodoc
class _$ContextActivityEventCopyWithImpl<$Res,
        $Val extends ContextActivityEvent>
    implements $ContextActivityEventCopyWith<$Res> {
  _$ContextActivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_value.copyWith(
      callback: null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as ContextActivityCallback,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandleContextActivityEventCopyWith<$Res>
    implements $ContextActivityEventCopyWith<$Res> {
  factory _$$HandleContextActivityEventCopyWith(
          _$HandleContextActivityEvent value,
          $Res Function(_$HandleContextActivityEvent) then) =
      __$$HandleContextActivityEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContextActivityCallback callback});
}

/// @nodoc
class __$$HandleContextActivityEventCopyWithImpl<$Res>
    extends _$ContextActivityEventCopyWithImpl<$Res,
        _$HandleContextActivityEvent>
    implements _$$HandleContextActivityEventCopyWith<$Res> {
  __$$HandleContextActivityEventCopyWithImpl(
      _$HandleContextActivityEvent _value,
      $Res Function(_$HandleContextActivityEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? callback = null,
  }) {
    return _then(_$HandleContextActivityEvent(
      null == callback
          ? _value.callback
          : callback // ignore: cast_nullable_to_non_nullable
              as ContextActivityCallback,
    ));
  }
}

/// @nodoc

class _$HandleContextActivityEvent extends HandleContextActivityEvent {
  const _$HandleContextActivityEvent(this.callback) : super._();

  @override
  final ContextActivityCallback callback;

  @override
  String toString() {
    return 'ContextActivityEvent.handleContextActivity(callback: $callback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleContextActivityEvent &&
            (identical(other.callback, callback) ||
                other.callback == callback));
  }

  @override
  int get hashCode => Object.hash(runtimeType, callback);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleContextActivityEventCopyWith<_$HandleContextActivityEvent>
      get copyWith => __$$HandleContextActivityEventCopyWithImpl<
          _$HandleContextActivityEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContextActivityCallback callback)
        handleContextActivity,
  }) {
    return handleContextActivity(callback);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContextActivityCallback callback)? handleContextActivity,
  }) {
    return handleContextActivity?.call(callback);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContextActivityCallback callback)? handleContextActivity,
    required TResult orElse(),
  }) {
    if (handleContextActivity != null) {
      return handleContextActivity(callback);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HandleContextActivityEvent value)
        handleContextActivity,
  }) {
    return handleContextActivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HandleContextActivityEvent value)? handleContextActivity,
  }) {
    return handleContextActivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HandleContextActivityEvent value)? handleContextActivity,
    required TResult orElse(),
  }) {
    if (handleContextActivity != null) {
      return handleContextActivity(this);
    }
    return orElse();
  }
}

abstract class HandleContextActivityEvent extends ContextActivityEvent {
  const factory HandleContextActivityEvent(
      final ContextActivityCallback callback) = _$HandleContextActivityEvent;
  const HandleContextActivityEvent._() : super._();

  @override
  ContextActivityCallback get callback;
  @override
  @JsonKey(ignore: true)
  _$$HandleContextActivityEventCopyWith<_$HandleContextActivityEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContextActivityState {
  ContextActivityCallback? get contextActivityHandler =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContextActivityCallback? contextActivityHandler)
        handleActionWithContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContextActivityCallback? contextActivityHandler)?
        handleActionWithContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContextActivityCallback? contextActivityHandler)?
        handleActionWithContext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HandleActionWithContext value)
        handleActionWithContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HandleActionWithContext value)? handleActionWithContext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HandleActionWithContext value)? handleActionWithContext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContextActivityStateCopyWith<ContextActivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextActivityStateCopyWith<$Res> {
  factory $ContextActivityStateCopyWith(ContextActivityState value,
          $Res Function(ContextActivityState) then) =
      _$ContextActivityStateCopyWithImpl<$Res, ContextActivityState>;
  @useResult
  $Res call({ContextActivityCallback? contextActivityHandler});
}

/// @nodoc
class _$ContextActivityStateCopyWithImpl<$Res,
        $Val extends ContextActivityState>
    implements $ContextActivityStateCopyWith<$Res> {
  _$ContextActivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contextActivityHandler = freezed,
  }) {
    return _then(_value.copyWith(
      contextActivityHandler: freezed == contextActivityHandler
          ? _value.contextActivityHandler
          : contextActivityHandler // ignore: cast_nullable_to_non_nullable
              as ContextActivityCallback?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HandleActionWithContextCopyWith<$Res>
    implements $ContextActivityStateCopyWith<$Res> {
  factory _$$HandleActionWithContextCopyWith(_$HandleActionWithContext value,
          $Res Function(_$HandleActionWithContext) then) =
      __$$HandleActionWithContextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContextActivityCallback? contextActivityHandler});
}

/// @nodoc
class __$$HandleActionWithContextCopyWithImpl<$Res>
    extends _$ContextActivityStateCopyWithImpl<$Res, _$HandleActionWithContext>
    implements _$$HandleActionWithContextCopyWith<$Res> {
  __$$HandleActionWithContextCopyWithImpl(_$HandleActionWithContext _value,
      $Res Function(_$HandleActionWithContext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contextActivityHandler = freezed,
  }) {
    return _then(_$HandleActionWithContext(
      freezed == contextActivityHandler
          ? _value.contextActivityHandler
          : contextActivityHandler // ignore: cast_nullable_to_non_nullable
              as ContextActivityCallback?,
    ));
  }
}

/// @nodoc

class _$HandleActionWithContext extends HandleActionWithContext {
  const _$HandleActionWithContext(this.contextActivityHandler) : super._();

  @override
  final ContextActivityCallback? contextActivityHandler;

  @override
  String toString() {
    return 'ContextActivityState.handleActionWithContext(contextActivityHandler: $contextActivityHandler)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HandleActionWithContext &&
            (identical(other.contextActivityHandler, contextActivityHandler) ||
                other.contextActivityHandler == contextActivityHandler));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contextActivityHandler);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HandleActionWithContextCopyWith<_$HandleActionWithContext> get copyWith =>
      __$$HandleActionWithContextCopyWithImpl<_$HandleActionWithContext>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContextActivityCallback? contextActivityHandler)
        handleActionWithContext,
  }) {
    return handleActionWithContext(contextActivityHandler);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContextActivityCallback? contextActivityHandler)?
        handleActionWithContext,
  }) {
    return handleActionWithContext?.call(contextActivityHandler);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContextActivityCallback? contextActivityHandler)?
        handleActionWithContext,
    required TResult orElse(),
  }) {
    if (handleActionWithContext != null) {
      return handleActionWithContext(contextActivityHandler);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HandleActionWithContext value)
        handleActionWithContext,
  }) {
    return handleActionWithContext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HandleActionWithContext value)? handleActionWithContext,
  }) {
    return handleActionWithContext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HandleActionWithContext value)? handleActionWithContext,
    required TResult orElse(),
  }) {
    if (handleActionWithContext != null) {
      return handleActionWithContext(this);
    }
    return orElse();
  }
}

abstract class HandleActionWithContext extends ContextActivityState {
  const factory HandleActionWithContext(
          final ContextActivityCallback? contextActivityHandler) =
      _$HandleActionWithContext;
  const HandleActionWithContext._() : super._();

  @override
  ContextActivityCallback? get contextActivityHandler;
  @override
  @JsonKey(ignore: true)
  _$$HandleActionWithContextCopyWith<_$HandleActionWithContext> get copyWith =>
      throw _privateConstructorUsedError;
}
