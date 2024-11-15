import 'package:flutter_note_app/data/data_source/note_api.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';

/// {@template NoteRepository}
/// A repository that orchestrate or handles `note` related requests.
/// {@endtemplate}
class NoteRepository {
  /// {@macro NoteRepository}
  const NoteRepository({
    required NoteApi noteApi,
  }) : _noteApi = noteApi;

  final NoteApi _noteApi;

  /// Provides a [Stream] of all notes.
  Stream<List<Note>> getNotes() => _noteApi.getNotes();

  /// {@macro NoteApi.saveNote}
  Future<void> saveNote(Note note) => _noteApi.saveNote(note);

  /// {@macro NoteApi.deleteNote}
  Future<void> deleteNote(String id) => _noteApi.deleteNote(id);
}
