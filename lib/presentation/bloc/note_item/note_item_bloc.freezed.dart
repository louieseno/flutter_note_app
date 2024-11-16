// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_item_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoteItemEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String title) titleChange,
    required TResult Function(String content) contentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String title)? titleChange,
    TResult? Function(String content)? contentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String title)? titleChange,
    TResult Function(String content)? contentChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_TitleChange value) titleChange,
    required TResult Function(_ContentChange value) contentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_TitleChange value)? titleChange,
    TResult? Function(_ContentChange value)? contentChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_TitleChange value)? titleChange,
    TResult Function(_ContentChange value)? contentChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemEventCopyWith<$Res> {
  factory $NoteItemEventCopyWith(
          NoteItemEvent value, $Res Function(NoteItemEvent) then) =
      _$NoteItemEventCopyWithImpl<$Res, NoteItemEvent>;
}

/// @nodoc
class _$NoteItemEventCopyWithImpl<$Res, $Val extends NoteItemEvent>
    implements $NoteItemEventCopyWith<$Res> {
  _$NoteItemEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveNoteImplCopyWith<$Res> {
  factory _$$SaveNoteImplCopyWith(
          _$SaveNoteImpl value, $Res Function(_$SaveNoteImpl) then) =
      __$$SaveNoteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveNoteImplCopyWithImpl<$Res>
    extends _$NoteItemEventCopyWithImpl<$Res, _$SaveNoteImpl>
    implements _$$SaveNoteImplCopyWith<$Res> {
  __$$SaveNoteImplCopyWithImpl(
      _$SaveNoteImpl _value, $Res Function(_$SaveNoteImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveNoteImpl implements _SaveNote {
  const _$SaveNoteImpl();

  @override
  String toString() {
    return 'NoteItemEvent.saveNote()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SaveNoteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String title) titleChange,
    required TResult Function(String content) contentChange,
  }) {
    return saveNote();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String title)? titleChange,
    TResult? Function(String content)? contentChange,
  }) {
    return saveNote?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String title)? titleChange,
    TResult Function(String content)? contentChange,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_TitleChange value) titleChange,
    required TResult Function(_ContentChange value) contentChange,
  }) {
    return saveNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_TitleChange value)? titleChange,
    TResult? Function(_ContentChange value)? contentChange,
  }) {
    return saveNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_TitleChange value)? titleChange,
    TResult Function(_ContentChange value)? contentChange,
    required TResult orElse(),
  }) {
    if (saveNote != null) {
      return saveNote(this);
    }
    return orElse();
  }
}

abstract class _SaveNote implements NoteItemEvent {
  const factory _SaveNote() = _$SaveNoteImpl;
}

/// @nodoc
abstract class _$$TitleChangeImplCopyWith<$Res> {
  factory _$$TitleChangeImplCopyWith(
          _$TitleChangeImpl value, $Res Function(_$TitleChangeImpl) then) =
      __$$TitleChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleChangeImplCopyWithImpl<$Res>
    extends _$NoteItemEventCopyWithImpl<$Res, _$TitleChangeImpl>
    implements _$$TitleChangeImplCopyWith<$Res> {
  __$$TitleChangeImplCopyWithImpl(
      _$TitleChangeImpl _value, $Res Function(_$TitleChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleChangeImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleChangeImpl implements _TitleChange {
  const _$TitleChangeImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NoteItemEvent.titleChange(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleChangeImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleChangeImplCopyWith<_$TitleChangeImpl> get copyWith =>
      __$$TitleChangeImplCopyWithImpl<_$TitleChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String title) titleChange,
    required TResult Function(String content) contentChange,
  }) {
    return titleChange(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String title)? titleChange,
    TResult? Function(String content)? contentChange,
  }) {
    return titleChange?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String title)? titleChange,
    TResult Function(String content)? contentChange,
    required TResult orElse(),
  }) {
    if (titleChange != null) {
      return titleChange(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_TitleChange value) titleChange,
    required TResult Function(_ContentChange value) contentChange,
  }) {
    return titleChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_TitleChange value)? titleChange,
    TResult? Function(_ContentChange value)? contentChange,
  }) {
    return titleChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_TitleChange value)? titleChange,
    TResult Function(_ContentChange value)? contentChange,
    required TResult orElse(),
  }) {
    if (titleChange != null) {
      return titleChange(this);
    }
    return orElse();
  }
}

abstract class _TitleChange implements NoteItemEvent {
  const factory _TitleChange(final String title) = _$TitleChangeImpl;

  String get title;

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TitleChangeImplCopyWith<_$TitleChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentChangeImplCopyWith<$Res> {
  factory _$$ContentChangeImplCopyWith(
          _$ContentChangeImpl value, $Res Function(_$ContentChangeImpl) then) =
      __$$ContentChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String content});
}

/// @nodoc
class __$$ContentChangeImplCopyWithImpl<$Res>
    extends _$NoteItemEventCopyWithImpl<$Res, _$ContentChangeImpl>
    implements _$$ContentChangeImplCopyWith<$Res> {
  __$$ContentChangeImplCopyWithImpl(
      _$ContentChangeImpl _value, $Res Function(_$ContentChangeImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$ContentChangeImpl(
      null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentChangeImpl implements _ContentChange {
  const _$ContentChangeImpl(this.content);

  @override
  final String content;

  @override
  String toString() {
    return 'NoteItemEvent.contentChange(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentChangeImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentChangeImplCopyWith<_$ContentChangeImpl> get copyWith =>
      __$$ContentChangeImplCopyWithImpl<_$ContentChangeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() saveNote,
    required TResult Function(String title) titleChange,
    required TResult Function(String content) contentChange,
  }) {
    return contentChange(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? saveNote,
    TResult? Function(String title)? titleChange,
    TResult? Function(String content)? contentChange,
  }) {
    return contentChange?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? saveNote,
    TResult Function(String title)? titleChange,
    TResult Function(String content)? contentChange,
    required TResult orElse(),
  }) {
    if (contentChange != null) {
      return contentChange(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveNote value) saveNote,
    required TResult Function(_TitleChange value) titleChange,
    required TResult Function(_ContentChange value) contentChange,
  }) {
    return contentChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveNote value)? saveNote,
    TResult? Function(_TitleChange value)? titleChange,
    TResult? Function(_ContentChange value)? contentChange,
  }) {
    return contentChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveNote value)? saveNote,
    TResult Function(_TitleChange value)? titleChange,
    TResult Function(_ContentChange value)? contentChange,
    required TResult orElse(),
  }) {
    if (contentChange != null) {
      return contentChange(this);
    }
    return orElse();
  }
}

abstract class _ContentChange implements NoteItemEvent {
  const factory _ContentChange(final String content) = _$ContentChangeImpl;

  String get content;

  /// Create a copy of NoteItemEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentChangeImplCopyWith<_$ContentChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteItemState {
  NoteItemStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  Note? get selectedNote => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoteItemStateCopyWith<NoteItemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteItemStateCopyWith<$Res> {
  factory $NoteItemStateCopyWith(
          NoteItemState value, $Res Function(NoteItemState) then) =
      _$NoteItemStateCopyWithImpl<$Res, NoteItemState>;
  @useResult
  $Res call(
      {NoteItemStatus status,
      String title,
      String content,
      Note? selectedNote,
      String? error});

  $NoteCopyWith<$Res>? get selectedNote;
}

/// @nodoc
class _$NoteItemStateCopyWithImpl<$Res, $Val extends NoteItemState>
    implements $NoteItemStateCopyWith<$Res> {
  _$NoteItemStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? content = null,
    Object? selectedNote = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteItemStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selectedNote: freezed == selectedNote
          ? _value.selectedNote
          : selectedNote // ignore: cast_nullable_to_non_nullable
              as Note?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoteCopyWith<$Res>? get selectedNote {
    if (_value.selectedNote == null) {
      return null;
    }

    return $NoteCopyWith<$Res>(_value.selectedNote!, (value) {
      return _then(_value.copyWith(selectedNote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NoteItemStateImplCopyWith<$Res>
    implements $NoteItemStateCopyWith<$Res> {
  factory _$$NoteItemStateImplCopyWith(
          _$NoteItemStateImpl value, $Res Function(_$NoteItemStateImpl) then) =
      __$$NoteItemStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NoteItemStatus status,
      String title,
      String content,
      Note? selectedNote,
      String? error});

  @override
  $NoteCopyWith<$Res>? get selectedNote;
}

/// @nodoc
class __$$NoteItemStateImplCopyWithImpl<$Res>
    extends _$NoteItemStateCopyWithImpl<$Res, _$NoteItemStateImpl>
    implements _$$NoteItemStateImplCopyWith<$Res> {
  __$$NoteItemStateImplCopyWithImpl(
      _$NoteItemStateImpl _value, $Res Function(_$NoteItemStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? title = null,
    Object? content = null,
    Object? selectedNote = freezed,
    Object? error = freezed,
  }) {
    return _then(_$NoteItemStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NoteItemStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      selectedNote: freezed == selectedNote
          ? _value.selectedNote
          : selectedNote // ignore: cast_nullable_to_non_nullable
              as Note?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoteItemStateImpl implements _NoteItemState {
  const _$NoteItemStateImpl(
      {required this.status,
      required this.title,
      required this.content,
      required this.selectedNote,
      required this.error});

  @override
  final NoteItemStatus status;
  @override
  final String title;
  @override
  final String content;
  @override
  final Note? selectedNote;
  @override
  final String? error;

  @override
  String toString() {
    return 'NoteItemState(status: $status, title: $title, content: $content, selectedNote: $selectedNote, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteItemStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.selectedNote, selectedNote) ||
                other.selectedNote == selectedNote) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, status, title, content, selectedNote, error);

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteItemStateImplCopyWith<_$NoteItemStateImpl> get copyWith =>
      __$$NoteItemStateImplCopyWithImpl<_$NoteItemStateImpl>(this, _$identity);
}

abstract class _NoteItemState implements NoteItemState {
  const factory _NoteItemState(
      {required final NoteItemStatus status,
      required final String title,
      required final String content,
      required final Note? selectedNote,
      required final String? error}) = _$NoteItemStateImpl;

  @override
  NoteItemStatus get status;
  @override
  String get title;
  @override
  String get content;
  @override
  Note? get selectedNote;
  @override
  String? get error;

  /// Create a copy of NoteItemState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoteItemStateImplCopyWith<_$NoteItemStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
