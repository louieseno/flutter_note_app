part of 'note_list_bloc.dart';

enum NoteListStatus { loading, success, failure }

@freezed
class NoteListState with _$NoteListState {
  const factory NoteListState({
    required NoteListStatus status,
    required List<Note> notes,
    required String? error,
  }) = _NoteListState;

  factory NoteListState.initial() {
    return const NoteListState(
      status: NoteListStatus.loading,
      notes: [],
      error: null,
    );
  }
}
