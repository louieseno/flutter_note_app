import 'package:flutter/widgets.dart';
import 'package:flutter_note_app/bootstrap.dart';
import 'package:flutter_note_app/data/data_source/local/local_storage_note_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final noteApi = LocalStorageNoteApi(
    plugin: await SharedPreferences.getInstance(),
  );
  bootstrap(noteApi: noteApi);
}
