// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TodoListStateTearOff {
  const _$TodoListStateTearOff();

  _TodoListInitialState initial() {
    return _TodoListInitialState();
  }

  _TodoListPageLoadingState pageLoading() {
    return _TodoListPageLoadingState();
  }

  _TodoListLoadedState loaded(List<Todo> todos) {
    return _TodoListLoadedState(
      todos,
    );
  }

  _TodoListFailureState failure(Failure failure) {
    return _TodoListFailureState(
      failure,
    );
  }
}

/// @nodoc
const $TodoListState = _$TodoListStateTearOff();

/// @nodoc
mixin _$TodoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pageLoading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoListInitialState value) initial,
    required TResult Function(_TodoListPageLoadingState value) pageLoading,
    required TResult Function(_TodoListLoadedState value) loaded,
    required TResult Function(_TodoListFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;
}

/// @nodoc
abstract class _$TodoListInitialStateCopyWith<$Res> {
  factory _$TodoListInitialStateCopyWith(_TodoListInitialState value,
          $Res Function(_TodoListInitialState) then) =
      __$TodoListInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodoListInitialStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListInitialStateCopyWith<$Res> {
  __$TodoListInitialStateCopyWithImpl(
      _TodoListInitialState _value, $Res Function(_TodoListInitialState) _then)
      : super(_value, (v) => _then(v as _TodoListInitialState));

  @override
  _TodoListInitialState get _value => super._value as _TodoListInitialState;
}

/// @nodoc

class _$_TodoListInitialState implements _TodoListInitialState {
  _$_TodoListInitialState();

  @override
  String toString() {
    return 'TodoListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _TodoListInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pageLoading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_TodoListInitialState value) initial,
    required TResult Function(_TodoListPageLoadingState value) pageLoading,
    required TResult Function(_TodoListLoadedState value) loaded,
    required TResult Function(_TodoListFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TodoListInitialState implements TodoListState {
  factory _TodoListInitialState() = _$_TodoListInitialState;
}

/// @nodoc
abstract class _$TodoListPageLoadingStateCopyWith<$Res> {
  factory _$TodoListPageLoadingStateCopyWith(_TodoListPageLoadingState value,
          $Res Function(_TodoListPageLoadingState) then) =
      __$TodoListPageLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$TodoListPageLoadingStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListPageLoadingStateCopyWith<$Res> {
  __$TodoListPageLoadingStateCopyWithImpl(_TodoListPageLoadingState _value,
      $Res Function(_TodoListPageLoadingState) _then)
      : super(_value, (v) => _then(v as _TodoListPageLoadingState));

  @override
  _TodoListPageLoadingState get _value =>
      super._value as _TodoListPageLoadingState;
}

/// @nodoc

class _$_TodoListPageLoadingState implements _TodoListPageLoadingState {
  _$_TodoListPageLoadingState();

  @override
  String toString() {
    return 'TodoListState.pageLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListPageLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pageLoading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return pageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
  }) {
    return pageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (pageLoading != null) {
      return pageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoListInitialState value) initial,
    required TResult Function(_TodoListPageLoadingState value) pageLoading,
    required TResult Function(_TodoListLoadedState value) loaded,
    required TResult Function(_TodoListFailureState value) failure,
  }) {
    return pageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
  }) {
    return pageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (pageLoading != null) {
      return pageLoading(this);
    }
    return orElse();
  }
}

abstract class _TodoListPageLoadingState implements TodoListState {
  factory _TodoListPageLoadingState() = _$_TodoListPageLoadingState;
}

/// @nodoc
abstract class _$TodoListLoadedStateCopyWith<$Res> {
  factory _$TodoListLoadedStateCopyWith(_TodoListLoadedState value,
          $Res Function(_TodoListLoadedState) then) =
      __$TodoListLoadedStateCopyWithImpl<$Res>;
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$TodoListLoadedStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListLoadedStateCopyWith<$Res> {
  __$TodoListLoadedStateCopyWithImpl(
      _TodoListLoadedState _value, $Res Function(_TodoListLoadedState) _then)
      : super(_value, (v) => _then(v as _TodoListLoadedState));

  @override
  _TodoListLoadedState get _value => super._value as _TodoListLoadedState;

  @override
  $Res call({
    Object? todos = freezed,
  }) {
    return _then(_TodoListLoadedState(
      todos == freezed
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_TodoListLoadedState implements _TodoListLoadedState {
  _$_TodoListLoadedState(this.todos);

  @override
  final List<Todo> todos;

  @override
  String toString() {
    return 'TodoListState.loaded(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListLoadedState &&
            const DeepCollectionEquality().equals(other.todos, todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todos));

  @JsonKey(ignore: true)
  @override
  _$TodoListLoadedStateCopyWith<_TodoListLoadedState> get copyWith =>
      __$TodoListLoadedStateCopyWithImpl<_TodoListLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pageLoading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return loaded(todos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
  }) {
    return loaded?.call(todos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(todos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoListInitialState value) initial,
    required TResult Function(_TodoListPageLoadingState value) pageLoading,
    required TResult Function(_TodoListLoadedState value) loaded,
    required TResult Function(_TodoListFailureState value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _TodoListLoadedState implements TodoListState {
  factory _TodoListLoadedState(List<Todo> todos) = _$_TodoListLoadedState;

  List<Todo> get todos;
  @JsonKey(ignore: true)
  _$TodoListLoadedStateCopyWith<_TodoListLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TodoListFailureStateCopyWith<$Res> {
  factory _$TodoListFailureStateCopyWith(_TodoListFailureState value,
          $Res Function(_TodoListFailureState) then) =
      __$TodoListFailureStateCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$TodoListFailureStateCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$TodoListFailureStateCopyWith<$Res> {
  __$TodoListFailureStateCopyWithImpl(
      _TodoListFailureState _value, $Res Function(_TodoListFailureState) _then)
      : super(_value, (v) => _then(v as _TodoListFailureState));

  @override
  _TodoListFailureState get _value => super._value as _TodoListFailureState;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_TodoListFailureState(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_TodoListFailureState implements _TodoListFailureState {
  _$_TodoListFailureState(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'TodoListState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoListFailureState &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$TodoListFailureStateCopyWith<_TodoListFailureState> get copyWith =>
      __$TodoListFailureStateCopyWithImpl<_TodoListFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() pageLoading,
    required TResult Function(List<Todo> todos) loaded,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? pageLoading,
    TResult Function(List<Todo> todos)? loaded,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TodoListInitialState value) initial,
    required TResult Function(_TodoListPageLoadingState value) pageLoading,
    required TResult Function(_TodoListLoadedState value) loaded,
    required TResult Function(_TodoListFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TodoListInitialState value)? initial,
    TResult Function(_TodoListPageLoadingState value)? pageLoading,
    TResult Function(_TodoListLoadedState value)? loaded,
    TResult Function(_TodoListFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _TodoListFailureState implements TodoListState {
  factory _TodoListFailureState(Failure failure) = _$_TodoListFailureState;

  Failure get failure;
  @JsonKey(ignore: true)
  _$TodoListFailureStateCopyWith<_TodoListFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
