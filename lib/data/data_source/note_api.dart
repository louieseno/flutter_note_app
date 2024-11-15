import 'package:flutter_note_app/data/model/note/note_model.dart';

/// {@template NoteApi}
/// The interface for an API that provides data manipulataion to a list of note.
/// {@endtemplate}
abstract class NoteApi {
  /// {@macro NoteApi}
  const NoteApi();

  /// {@template NoteApi.getNotes}
  /// Provides a [Stream] of all notes.
  /// {@endtemplate}
  Stream<List<Note>> getNotes();

  /// {@template NoteApi.saveNote}
  /// Saves a [note].
  ///
  /// If a [note] with the same id already exists, it will be replaced.
  /// {@endtemplate}
  Future<void> saveNote(Note note);

  /// {@template NoteApi.deleteNote}
  /// Deletes the `note` with the given id.
  ///
  /// If no `note` with the given id exists, a [NoteNotFoundException] error is
  /// thrown.
  /// {@endtemplate}
  Future<void> deleteNote(String id);

  /// {@template NoteApi.close}
  /// Closes the client and frees up any resources.
  /// {@endtemplate}
  Future<void> close();
}

/// {@template NoteNotFoundException}
/// Error thrown when a [Note] with a given id is not found.
/// {@endtemplate}
class NoteNotFoundException implements Exception {}
