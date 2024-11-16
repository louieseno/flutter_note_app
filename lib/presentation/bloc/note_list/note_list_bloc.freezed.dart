// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotes value) getNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotes value)? getNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotes value)? getNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListEventCopyWith<$Res> {
  factory $NoteListEventCopyWith(
          NoteListEvent value, $Res Function(NoteListEvent) then) =
      _$NoteListEventCopyWithImpl<$Res, NoteListEvent>;
}

/// @nodoc
class _$NoteListEventCopyWithImpl<$Res, $Val extends NoteListEvent>
    implements $NoteListEventCopyWith<$Res> {
  _$NoteListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetNotesImplCopyWith<$Res> {
  factory _$$GetNotesImplCopyWith(
          _$GetNotesImpl value, $Res Function(_$GetNotesImpl) then) =
      __$$GetNotesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetNotesImplCopyWithImpl<$Res>
    extends _$NoteListEventCopyWithImpl<$Res, _$GetNotesImpl>
    implements _$$GetNotesImplCopyWith<$Res> {
  __$$GetNotesImplCopyWithImpl(
      _$GetNotesImpl _value, $Res Function(_$GetNotesImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetNotesImpl implements _GetNotes {
  const _$GetNotesImpl();

  @override
  String toString() {
    return 'NoteListEvent.getNotes()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetNotesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getNotes,
  }) {
    return getNotes();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getNotes,
  }) {
    return getNotes?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getNotes,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetNotes value) getNotes,
  }) {
    return getNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetNotes value)? getNotes,
  }) {
    return getNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetNotes value)? getNotes,
    required TResult orElse(),
  }) {
    if (getNotes != null) {
      return getNotes(this);
    }
    return orElse();
  }
}

abstract class _GetNotes implements NoteListEvent {
  const factory _GetNotes() = _$GetNotesImpl;
}

/// @nodoc
mixin _$NoteListState {
  NoteListStatus get status => throw _privateConstructorUsedError;
  List<Note> get notes => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteListStateCopyWith<NoteListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteListStateCopyWith<$Res> {
  factory $NoteListStateCopyWith(
          NoteListState value, $Res Function(NoteListState) then) =
      _$NoteListStateCopyWithImpl<$Res, NoteListState>;
  @useResult
  $Res call({NoteListStatus status, List<Note> notes, String? error});
}

/// @nodoc
class _$NoteListStateCopyWithImpl<$Res, $Val extends NoteListState>
    implements $NoteListStateCopyWith<$Res> {
  _$NoteListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteListStatus,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteListStateImplCopyWith<$Res>
    implements $NoteListStateCopyWith<$Res> {
  factory _$$NoteListStateImplCopyWith(
          _$NoteListStateImpl value, $Res Function(_$NoteListStateImpl) then) =
      __$$NoteListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NoteListStatus status, List<Note> notes, String? error});
}

/// @nodoc
class __$$NoteListStateImplCopyWithImpl<$Res>
    extends _$NoteListStateCopyWithImpl<$Res, _$NoteListStateImpl>
    implements _$$NoteListStateImplCopyWith<$Res> {
  __$$NoteListStateImplCopyWithImpl(
      _$NoteListStateImpl _value, $Res Function(_$NoteListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? notes = null,
    Object? error = freezed,
  }) {
    return _then(_$NoteListStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteListStatus,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<Note>,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoteListStateImpl implements _NoteListState {
  const _$NoteListStateImpl(
      {required this.status,
      required final List<Note> notes,
      required this.error})
      : _notes = notes;

  @override
  final NoteListStatus status;
  final List<Note> _notes;
  @override
  List<Note> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final String? error;

  @override
  String toString() {
    return 'NoteListState(status: $status, notes: $notes, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteListStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_notes), error);

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      __$$NoteListStateImplCopyWithImpl<_$NoteListStateImpl>(this, _$identity);
}

abstract class _NoteListState implements NoteListState {
  const factory _NoteListState(
      {required final NoteListStatus status,
      required final List<Note> notes,
      required final String? error}) = _$NoteListStateImpl;

  @override
  NoteListStatus get status;
  @override
  List<Note> get notes;
  @override
  String? get error;

  /// Create a copy of NoteListState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteListStateImplCopyWith<_$NoteListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
