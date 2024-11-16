import 'package:bloc/bloc.dart';
import 'package:flutter_note_app/domain/repository/note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_note_event.dart';
part 'delete_note_state.dart';
part 'delete_note_bloc.freezed.dart';

class DeleteNoteBloc extends Bloc<DeleteNoteEvent, DeleteNoteState> {
  DeleteNoteBloc({required this.noteRepository})
      : super(DeleteNoteState.initial()) {
    on<DeleteNoteEvent>((event, emit) async {
      await event.when(
        deletNote: (id) async {
          emit(state.copyWith(status: DeleteNoteStatus.loading));

          try {
            await noteRepository.deleteNote(id);
            emit(
              state.copyWith(
                status: DeleteNoteStatus.success,
                error: null,
              ),
            );
          } catch (error) {
            emit(
              state.copyWith(
                status: DeleteNoteStatus.failure,
                error: Error.safeToString(error),
              ),
            );
          }
        },
      );
    });
  }

  final NoteRepository noteRepository;
}
