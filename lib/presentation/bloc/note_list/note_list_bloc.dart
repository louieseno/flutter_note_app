import 'package:bloc/bloc.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/repository/note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_list_event.dart';
part 'note_list_state.dart';
part 'note_list_bloc.freezed.dart';

class NoteListBloc extends Bloc<NoteListEvent, NoteListState> {
  NoteListBloc({required this.noteRepository})
      : super(NoteListState.initial()) {
    on<NoteListEvent>((event, emit) async {
      await event.when(
        getNotes: () async {
          await emit.forEach<List<Note>>(
            noteRepository.getNotes(),
            onData: (List<Note> notes) => state.copyWith(
              status: NoteListStatus.success,
              notes: notes,
              error: null,
            ),
            onError: (Object? error, __) {
              return state.copyWith(
                status: NoteListStatus.failure,
                notes: [],
                error: Error.safeToString(error),
              );
            },
          );
        },
      );
    });
  }
  final NoteRepository noteRepository;
}
