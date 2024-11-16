part of 'note_item_bloc.dart';

enum NoteItemStatus { initial, loading, success, failure }

extension EditTodoStatusX on NoteItemStatus {
  bool get isLoading => this == NoteItemStatus.loading;
}

@freezed
class NoteItemState with _$NoteItemState {
  const factory NoteItemState({
    required NoteItemStatus status,
    required String title,
    required String content,
    required Note? selectedNote,
    required String? error,
  }) = _NoteItemState;

  factory NoteItemState.initial({
    String title = '',
    String content = '',
    Note? selectedNote,
  }) {
    return NoteItemState(
      status: NoteItemStatus.initial,
      title: title,
      content: content,
      selectedNote: selectedNote,
      error: null,
    );
  }
}
