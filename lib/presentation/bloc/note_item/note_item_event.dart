part of 'note_item_bloc.dart';

@freezed
class NoteItemEvent with _$NoteItemEvent {
  const factory NoteItemEvent.saveNote() = _SaveNote;
  const factory NoteItemEvent.titleChange(String title) = _TitleChange;
  const factory NoteItemEvent.contentChange(String content) = _ContentChange;
}
