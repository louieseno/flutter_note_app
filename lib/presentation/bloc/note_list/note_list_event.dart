part of 'note_list_bloc.dart';

@freezed
class NoteListEvent with _$NoteListEvent {
  const factory NoteListEvent.getNotes() = _GetNotes;
}
