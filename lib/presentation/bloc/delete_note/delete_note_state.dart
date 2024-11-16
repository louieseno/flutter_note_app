part of 'delete_note_bloc.dart';

enum DeleteNoteStatus { initial, loading, success, failure }

extension DeleteNoteStatusX on DeleteNoteStatus {
  bool get isLoading => this == DeleteNoteStatus.loading;
  bool get isSuccess => this == DeleteNoteStatus.success;
  bool get isFailure => this == DeleteNoteStatus.failure;
}

@freezed
class DeleteNoteState with _$DeleteNoteState {
  const factory DeleteNoteState({
    required DeleteNoteStatus status,
    required String? error,
  }) = _DeleteNoteState;

  factory DeleteNoteState.initial() {
    return const DeleteNoteState(
      status: DeleteNoteStatus.initial,
      error: null,
    );
  }
}
