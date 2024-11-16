import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_note_app/core/route/app_route.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/domain/repository/note_repository.dart';
import 'package:flutter_note_app/presentation/bloc/delete_note/delete_note_bloc.dart';
import 'package:flutter_note_app/presentation/bloc/note_item/note_item_bloc.dart';
import 'package:go_router/go_router.dart';

class NoteItemPage extends StatelessWidget {
  const NoteItemPage({super.key, this.initialNote});

  static const AppRouteRecord route = (name: 'Note', path: '/note');

  final Note? initialNote;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteItemBloc>(
          create: (BuildContext context) => NoteItemBloc(
            noteRepository: context.read<NoteRepository>(),
            initialNote: initialNote,
          ),
        ),
        BlocProvider<DeleteNoteBloc>(
          create: (BuildContext context) =>
              DeleteNoteBloc(noteRepository: context.read<NoteRepository>()),
        ),
      ],
      child: const _NoteItem(),
    );
  }
}

class _NoteItem extends StatelessWidget {
  const _NoteItem();

  @override
  Widget build(BuildContext context) {
    final selectedNoteId = context.watch<NoteItemBloc>().initialNote?.id ?? '';

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 150,
        leading: Row(
          children: [
            IconButton(
              onPressed: context.pop,
              icon: const Icon(Icons.arrow_back_ios),
            ),
            AppText.subtitle1(text: 'Notes'),
          ],
        ),
        actions: [
          BlocConsumer<NoteItemBloc, NoteItemState>(
            listener: (context, state) {
              if (state.status == NoteItemStatus.success) context.pop();
            },
            builder: (context, state) {
              final isLoading = state.status.isLoading;
              return TextButton(
                onPressed: isLoading
                    ? null
                    : () => context
                        .read<NoteItemBloc>()
                        .add(const NoteItemEvent.saveNote()),
                child: AppText.regular1(
                  text: 'Save',
                  textColor: isLoading ? Colors.grey : Colors.purple,
                ),
              );
            },
          ),
          if (selectedNoteId.isNotEmpty)
            BlocConsumer<DeleteNoteBloc, DeleteNoteState>(
              listener: (context, state) {
                if (state.status.isSuccess) context.pop();
                if (state.status.isFailure) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(seconds: 1),
                      backgroundColor: Colors.redAccent,
                      behavior: SnackBarBehavior.floating,
                      margin: const EdgeInsets.all(10),
                      content: AppText.regular1(
                        text: 'Failed to delete note.',
                        textColor: Colors.white,
                      ),
                    ),
                  );
                }
              },
              builder: (context, state) {
                final isLoading = state.status.isLoading;
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: TextButton.icon(
                    onPressed: isLoading
                        ? null
                        : () {
                            context
                                .read<DeleteNoteBloc>()
                                .add(DeleteNoteEvent.deletNote(selectedNoteId));
                          },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    label: AppText.regular1(
                      text: 'Delete',
                      textColor: Colors.red,
                    ),
                  ),
                );
              },
            ),
        ],
      ),
      body: const CupertinoScrollbar(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [_TitleField(), _ContentField()],
            ),
          ),
        ),
      ),
    );
  }
}

class _TitleField extends StatelessWidget {
  const _TitleField();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NoteItemBloc>().state;

    return TextFormField(
      key: const Key('title-field'),
      initialValue: state.title,
      decoration: const InputDecoration(hintText: 'Enter title'),
      maxLength: 50,
      inputFormatters: [
        LengthLimitingTextInputFormatter(50),
      ],
      onChanged: (value) {
        context.read<NoteItemBloc>().add(NoteItemEvent.titleChange(value));
      },
    );
  }
}

class _ContentField extends StatelessWidget {
  const _ContentField();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<NoteItemBloc>().state;

    return TextFormField(
      key: const Key('content-field'),
      initialValue: state.content,
      decoration: const InputDecoration(hintText: 'Enter content'),
      maxLength: 300,
      maxLines: 7,
      inputFormatters: [LengthLimitingTextInputFormatter(300)],
      onChanged: (value) {
        context.read<NoteItemBloc>().add(NoteItemEvent.contentChange(value));
      },
    );
  }
}
