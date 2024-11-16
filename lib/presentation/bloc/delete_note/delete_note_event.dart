part of 'delete_note_bloc.dart';

@freezed
class DeleteNoteEvent with _$DeleteNoteEvent {
  const factory DeleteNoteEvent.deletNote(String id) = _DeleteNote;
}
