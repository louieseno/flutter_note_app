import 'package:bloc/bloc.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/repository/note_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note_item_event.dart';
part 'note_item_state.dart';
part 'note_item_bloc.freezed.dart';

class NoteItemBloc extends Bloc<NoteItemEvent, NoteItemState> {
  NoteItemBloc({required this.noteRepository, this.initialNote})
      : super(
          NoteItemState.initial(
            selectedNote: initialNote,
            title: initialNote?.title ?? '',
            content: initialNote?.content ?? '',
          ),
        ) {
    on<NoteItemEvent>((event, emit) async {
      await event.when(
        saveNote: () async {
          emit(state.copyWith(status: NoteItemStatus.loading));
          final note =
              (state.selectedNote ?? const Note(id: '', title: '', content: ''))
                  .copyWith(
            title: state.title,
            content: state.content,
          );
          try {
            await noteRepository.saveNote(note);
            emit(state.copyWith(status: NoteItemStatus.success, error: null));
          } catch (error) {
            emit(
              state.copyWith(
                status: NoteItemStatus.failure,
                error: Error.safeToString(error),
              ),
            );
          }
        },
        titleChange: (value) {
          emit(state.copyWith(title: value));
        },
        contentChange: (value) {
          emit(state.copyWith(content: value));
        },
      );
    });
  }

  final NoteRepository noteRepository;
  final Note? initialNote;
}
