// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'flow_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FlowStateTearOff {
  const _$FlowStateTearOff();

  LoadingState loading(String? message, StateRendererType stateRendererType) {
    return LoadingState(
      message,
      stateRendererType,
    );
  }

  ErrorState error(String? message, StateRendererType stateRendererType) {
    return ErrorState(
      message,
      stateRendererType,
    );
  }

  ContentState content(String? message,
      [StateRendererType stateRendererType =
          StateRendererType.CONTENT_SCREEN_STATE]) {
    return ContentState(
      message,
      stateRendererType,
    );
  }

  EmptyState empty(String? message,
      [StateRendererType stateRendererType =
          StateRendererType.EMPTY_SCREEN_STATE]) {
    return EmptyState(
      message,
      stateRendererType,
    );
  }

  SuccessState success(String? message, StateRendererType stateRendererType) {
    return SuccessState(
      message,
      stateRendererType,
    );
  }
}

/// @nodoc
const $FlowState = _$FlowStateTearOff();

/// @nodoc
mixin _$FlowState {
  String? get message => throw _privateConstructorUsedError;
  StateRendererType get stateRendererType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FlowStateCopyWith<FlowState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowStateCopyWith<$Res> {
  factory $FlowStateCopyWith(FlowState value, $Res Function(FlowState) then) =
      _$FlowStateCopyWithImpl<$Res>;
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$FlowStateCopyWithImpl<$Res> implements $FlowStateCopyWith<$Res> {
  _$FlowStateCopyWithImpl(this._value, this._then);

  final FlowState _value;
  // ignore: unused_field
  final $Res Function(FlowState) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType: stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(
      LoadingState _value, $Res Function(LoadingState) _then)
      : super(_value, (v) => _then(v as LoadingState));

  @override
  LoadingState get _value => super._value as LoadingState;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(LoadingState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$LoadingState extends LoadingState {
  const _$LoadingState(this.message, this.stateRendererType) : super._();

  @override
  final String? message;
  @override
  final StateRendererType stateRendererType;

  @override
  String toString() {
    return 'FlowState.loading(message: $message, stateRendererType: $stateRendererType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stateRendererType, stateRendererType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stateRendererType));

  @JsonKey(ignore: true)
  @override
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      _$LoadingStateCopyWithImpl<LoadingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) {
    return loading(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) {
    return loading?.call(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(message, stateRendererType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState extends FlowState {
  const factory LoadingState(
      String? message, StateRendererType stateRendererType) = _$LoadingState;
  const LoadingState._() : super._();

  @override
  String? get message;
  @override
  StateRendererType get stateRendererType;
  @override
  @JsonKey(ignore: true)
  $LoadingStateCopyWith<LoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory $ErrorStateCopyWith(
          ErrorState value, $Res Function(ErrorState) then) =
      _$ErrorStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$ErrorStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements $ErrorStateCopyWith<$Res> {
  _$ErrorStateCopyWithImpl(ErrorState _value, $Res Function(ErrorState) _then)
      : super(_value, (v) => _then(v as ErrorState));

  @override
  ErrorState get _value => super._value as ErrorState;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(ErrorState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$ErrorState extends ErrorState {
  const _$ErrorState(this.message, this.stateRendererType) : super._();

  @override
  final String? message;
  @override
  final StateRendererType stateRendererType;

  @override
  String toString() {
    return 'FlowState.error(message: $message, stateRendererType: $stateRendererType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ErrorState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stateRendererType, stateRendererType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stateRendererType));

  @JsonKey(ignore: true)
  @override
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      _$ErrorStateCopyWithImpl<ErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) {
    return error(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) {
    return error?.call(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, stateRendererType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorState extends FlowState {
  const factory ErrorState(
      String? message, StateRendererType stateRendererType) = _$ErrorState;
  const ErrorState._() : super._();

  @override
  String? get message;
  @override
  StateRendererType get stateRendererType;
  @override
  @JsonKey(ignore: true)
  $ErrorStateCopyWith<ErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory $ContentStateCopyWith(
          ContentState value, $Res Function(ContentState) then) =
      _$ContentStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$ContentStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements $ContentStateCopyWith<$Res> {
  _$ContentStateCopyWithImpl(
      ContentState _value, $Res Function(ContentState) _then)
      : super(_value, (v) => _then(v as ContentState));

  @override
  ContentState get _value => super._value as ContentState;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(ContentState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$ContentState extends ContentState {
  const _$ContentState(this.message,
      [this.stateRendererType = StateRendererType.CONTENT_SCREEN_STATE])
      : super._();

  @override
  final String? message;
  @JsonKey()
  @override
  final StateRendererType stateRendererType;

  @override
  String toString() {
    return 'FlowState.content(message: $message, stateRendererType: $stateRendererType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContentState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stateRendererType, stateRendererType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stateRendererType));

  @JsonKey(ignore: true)
  @override
  $ContentStateCopyWith<ContentState> get copyWith =>
      _$ContentStateCopyWithImpl<ContentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) {
    return content(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) {
    return content?.call(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(message, stateRendererType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class ContentState extends FlowState {
  const factory ContentState(String? message,
      [StateRendererType stateRendererType]) = _$ContentState;
  const ContentState._() : super._();

  @override
  String? get message;
  @override
  StateRendererType get stateRendererType;
  @override
  @JsonKey(ignore: true)
  $ContentStateCopyWith<ContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory $EmptyStateCopyWith(
          EmptyState value, $Res Function(EmptyState) then) =
      _$EmptyStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$EmptyStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements $EmptyStateCopyWith<$Res> {
  _$EmptyStateCopyWithImpl(EmptyState _value, $Res Function(EmptyState) _then)
      : super(_value, (v) => _then(v as EmptyState));

  @override
  EmptyState get _value => super._value as EmptyState;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(EmptyState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$EmptyState extends EmptyState {
  const _$EmptyState(this.message,
      [this.stateRendererType = StateRendererType.EMPTY_SCREEN_STATE])
      : super._();

  @override
  final String? message;
  @JsonKey()
  @override
  final StateRendererType stateRendererType;

  @override
  String toString() {
    return 'FlowState.empty(message: $message, stateRendererType: $stateRendererType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmptyState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stateRendererType, stateRendererType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stateRendererType));

  @JsonKey(ignore: true)
  @override
  $EmptyStateCopyWith<EmptyState> get copyWith =>
      _$EmptyStateCopyWithImpl<EmptyState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) {
    return empty(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) {
    return empty?.call(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(message, stateRendererType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class EmptyState extends FlowState {
  const factory EmptyState(String? message,
      [StateRendererType stateRendererType]) = _$EmptyState;
  const EmptyState._() : super._();

  @override
  String? get message;
  @override
  StateRendererType get stateRendererType;
  @override
  @JsonKey(ignore: true)
  $EmptyStateCopyWith<EmptyState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuccessStateCopyWith<$Res> implements $FlowStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(
          SuccessState value, $Res Function(SuccessState) then) =
      _$SuccessStateCopyWithImpl<$Res>;
  @override
  $Res call({String? message, StateRendererType stateRendererType});
}

/// @nodoc
class _$SuccessStateCopyWithImpl<$Res> extends _$FlowStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(
      SuccessState _value, $Res Function(SuccessState) _then)
      : super(_value, (v) => _then(v as SuccessState));

  @override
  SuccessState get _value => super._value as SuccessState;

  @override
  $Res call({
    Object? message = freezed,
    Object? stateRendererType = freezed,
  }) {
    return _then(SuccessState(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      stateRendererType == freezed
          ? _value.stateRendererType
          : stateRendererType // ignore: cast_nullable_to_non_nullable
              as StateRendererType,
    ));
  }
}

/// @nodoc

class _$SuccessState extends SuccessState {
  const _$SuccessState(this.message, this.stateRendererType) : super._();

  @override
  final String? message;
  @override
  final StateRendererType stateRendererType;

  @override
  String toString() {
    return 'FlowState.success(message: $message, stateRendererType: $stateRendererType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SuccessState &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality()
                .equals(other.stateRendererType, stateRendererType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(stateRendererType));

  @JsonKey(ignore: true)
  @override
  $SuccessStateCopyWith<SuccessState> get copyWith =>
      _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        loading,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        error,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        content,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        empty,
    required TResult Function(
            String? message, StateRendererType stateRendererType)
        success,
  }) {
    return success(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
  }) {
    return success?.call(message, stateRendererType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message, StateRendererType stateRendererType)?
        loading,
    TResult Function(String? message, StateRendererType stateRendererType)?
        error,
    TResult Function(String? message, StateRendererType stateRendererType)?
        content,
    TResult Function(String? message, StateRendererType stateRendererType)?
        empty,
    TResult Function(String? message, StateRendererType stateRendererType)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message, stateRendererType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingState value) loading,
    required TResult Function(ErrorState value) error,
    required TResult Function(ContentState value) content,
    required TResult Function(EmptyState value) empty,
    required TResult Function(SuccessState value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingState value)? loading,
    TResult Function(ErrorState value)? error,
    TResult Function(ContentState value)? content,
    TResult Function(EmptyState value)? empty,
    TResult Function(SuccessState value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState extends FlowState {
  const factory SuccessState(
      String? message, StateRendererType stateRendererType) = _$SuccessState;
  const SuccessState._() : super._();

  @override
  String? get message;
  @override
  StateRendererType get stateRendererType;
  @override
  @JsonKey(ignore: true)
  $SuccessStateCopyWith<SuccessState> get copyWith =>
      throw _privateConstructorUsedError;
}
