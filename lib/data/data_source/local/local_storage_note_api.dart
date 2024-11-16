import 'dart:convert';

import 'package:flutter_note_app/data/data_source/note_api.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

/// {@template LocalStorageNoteApi}
/// A Flutter implementation of the [NoteApi] that uses local storage.
/// {@endtemplate}
class LocalStorageNoteApi extends NoteApi {
  /// {@macro LocalStorageNoteApi}
  LocalStorageNoteApi({
    required SharedPreferences plugin,
  })  : _plugin = plugin,
        _uuid = const Uuid() {
    _init();
  }

  final SharedPreferences _plugin;
  final Uuid _uuid;

  late final _noteStreamController = BehaviorSubject<List<Note>>.seeded(
    const [],
  );
  static const kNotesCollectionKey = '__notes_collection_key__';

  String? _getValue(String key) => _plugin.getString(key);

  Future<void> _setValue(String key, String value) =>
      _plugin.setString(key, value);

  Future<void> _updateList(List<Note> notes) {
    _noteStreamController.add(notes);
    return _setValue(kNotesCollectionKey, jsonEncode(notes));
  }

  /// Fetch stored list of notes on init
  void _init() {
    final notesJson = _getValue(kNotesCollectionKey);
    if (notesJson != null) {
      final notes = List<Map<dynamic, dynamic>>.from(
        jsonDecode(notesJson) as List,
      )
          .map((jsonMap) => Note.fromJson(Map<String, dynamic>.from(jsonMap)))
          .toList();
      _noteStreamController.add(notes);
    } else {
      _noteStreamController.add(const []);
    }
  }

  @override
  Future<void> close() {
    _noteStreamController.close();
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNote(String id) {
    final notes = [..._noteStreamController.value];
    final noteIndex = notes.indexWhere((existing) => existing.id == id);
    if (noteIndex != -1) {
      notes.removeAt(noteIndex);
      return _updateList(notes);
    } else {
      throw NoteNotFoundException();
    }
  }

  @override
  Stream<List<Note>> getNotes() => _noteStreamController.asBroadcastStream();

  @override
  Future<void> saveNote(Note note) {
    final notes = [..._noteStreamController.value];
    final noteIndex = notes.indexWhere((existing) => existing.id == note.id);

    if (noteIndex != -1) {
      notes[noteIndex] = note;
    } else {
      final noteWithId = note.copyWith(id: _uuid.v4());
      notes.add(noteWithId);
    }
    return _updateList(notes);
  }
}
