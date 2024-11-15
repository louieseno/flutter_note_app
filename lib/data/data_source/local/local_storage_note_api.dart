import 'dart:convert';

import 'package:flutter_note_app/data/data_source/note_api.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:rxdart/subjects.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template LocalStorageNoteApi}
/// A Flutter implementation of the [NoteApi] that uses local storage.
/// {@endtemplate}
class LocalStorageNoteApi extends NoteApi {
  /// {@macro LocalStorageNoteApi}
  LocalStorageNoteApi({
    required SharedPreferences plugin,
  }) : _plugin = plugin {
    _init();
  }

  final SharedPreferences _plugin;
  late final _noteStreamController = BehaviorSubject<List<Note>>.seeded(
    const [],
  );
  static const kNotesCollectionKey = '__notes_collection_key__';

  String? _getValue(String key) => _plugin.getString(key);

  Future<void> _setValue(String key, String value) =>
      _plugin.setString(key, value);

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
    // TODO: implement close
    throw UnimplementedError();
  }

  @override
  Future<void> deleteNote(String id) {
    // TODO: implement deleteNote
    throw UnimplementedError();
  }

  @override
  Stream<List<Note>> getNotes() {
    // TODO: implement getNotes
    throw UnimplementedError();
  }

  @override
  Future<void> saveNote(Note note) {
    // TODO: implement saveNote
    throw UnimplementedError();
  }
}
