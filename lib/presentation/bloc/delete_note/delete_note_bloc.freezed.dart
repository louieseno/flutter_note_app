// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeleteNoteEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deletNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deletNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deletNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteNote value) deletNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteNote value)? deletNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deletNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeleteNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteNoteEventCopyWith<DeleteNoteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteNoteEventCopyWith<$Res> {
  factory $DeleteNoteEventCopyWith(
          DeleteNoteEvent value, $Res Function(DeleteNoteEvent) then) =
      _$DeleteNoteEventCopyWithImpl<$Res, DeleteNoteEvent>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$DeleteNoteEventCopyWithImpl<$Res, $Val extends DeleteNoteEvent>
    implements $DeleteNoteEventCopyWith<$Res> {
  _$DeleteNoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteNoteImplCopyWith<$Res>
    implements $DeleteNoteEventCopyWith<$Res> {
  factory _$$DeleteNoteImplCopyWith(
          _$DeleteNoteImpl value, $Res Function(_$DeleteNoteImpl) then) =
      __$$DeleteNoteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteNoteImplCopyWithImpl<$Res>
    extends _$DeleteNoteEventCopyWithImpl<$Res, _$DeleteNoteImpl>
    implements _$$DeleteNoteImplCopyWith<$Res> {
  __$$DeleteNoteImplCopyWithImpl(
      _$DeleteNoteImpl _value, $Res Function(_$DeleteNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteNoteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteNoteImpl implements _DeleteNote {
  const _$DeleteNoteImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'DeleteNoteEvent.deletNote(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of DeleteNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      __$$DeleteNoteImplCopyWithImpl<_$DeleteNoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) deletNote,
  }) {
    return deletNote(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? deletNote,
  }) {
    return deletNote?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? deletNote,
    required TResult orElse(),
  }) {
    if (deletNote != null) {
      return deletNote(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DeleteNote value) deletNote,
  }) {
    return deletNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DeleteNote value)? deletNote,
  }) {
    return deletNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DeleteNote value)? deletNote,
    required TResult orElse(),
  }) {
    if (deletNote != null) {
      return deletNote(this);
    }
    return orElse();
  }
}

abstract class _DeleteNote implements DeleteNoteEvent {
  const factory _DeleteNote(final String id) = _$DeleteNoteImpl;

  @override
  String get id;

  /// Create a copy of DeleteNoteEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteImplCopyWith<_$DeleteNoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeleteNoteState {
  DeleteNoteStatus get status => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of DeleteNoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteNoteStateCopyWith<DeleteNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteNoteStateCopyWith<$Res> {
  factory $DeleteNoteStateCopyWith(
          DeleteNoteState value, $Res Function(DeleteNoteState) then) =
      _$DeleteNoteStateCopyWithImpl<$Res, DeleteNoteState>;
  @useResult
  $Res call({DeleteNoteStatus status, String? error});
}

/// @nodoc
class _$DeleteNoteStateCopyWithImpl<$Res, $Val extends DeleteNoteState>
    implements $DeleteNoteStateCopyWith<$Res> {
  _$DeleteNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteNoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeleteNoteStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteNoteStateImplCopyWith<$Res>
    implements $DeleteNoteStateCopyWith<$Res> {
  factory _$$DeleteNoteStateImplCopyWith(_$DeleteNoteStateImpl value,
          $Res Function(_$DeleteNoteStateImpl) then) =
      __$$DeleteNoteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteNoteStatus status, String? error});
}

/// @nodoc
class __$$DeleteNoteStateImplCopyWithImpl<$Res>
    extends _$DeleteNoteStateCopyWithImpl<$Res, _$DeleteNoteStateImpl>
    implements _$$DeleteNoteStateImplCopyWith<$Res> {
  __$$DeleteNoteStateImplCopyWithImpl(
      _$DeleteNoteStateImpl _value, $Res Function(_$DeleteNoteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteNoteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? error = freezed,
  }) {
    return _then(_$DeleteNoteStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DeleteNoteStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DeleteNoteStateImpl implements _DeleteNoteState {
  const _$DeleteNoteStateImpl({required this.status, required this.error});

  @override
  final DeleteNoteStatus status;
  @override
  final String? error;

  @override
  String toString() {
    return 'DeleteNoteState(status: $status, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteNoteStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, error);

  /// Create a copy of DeleteNoteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteNoteStateImplCopyWith<_$DeleteNoteStateImpl> get copyWith =>
      __$$DeleteNoteStateImplCopyWithImpl<_$DeleteNoteStateImpl>(
          this, _$identity);
}

abstract class _DeleteNoteState implements DeleteNoteState {
  const factory _DeleteNoteState(
      {required final DeleteNoteStatus status,
      required final String? error}) = _$DeleteNoteStateImpl;

  @override
  DeleteNoteStatus get status;
  @override
  String? get error;

  /// Create a copy of DeleteNoteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteNoteStateImplCopyWith<_$DeleteNoteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
