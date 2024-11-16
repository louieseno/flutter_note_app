import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_note_app/core/route/app_route.dart';
import 'package:flutter_note_app/core/widget/app_empty.dart';
import 'package:flutter_note_app/core/widget/app_error.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';
import 'package:flutter_note_app/domain/repository/note_repository.dart';
import 'package:flutter_note_app/presentation/bloc/delete_note/delete_note_bloc.dart';
import 'package:flutter_note_app/presentation/bloc/note_list/note_list_bloc.dart';
import 'package:flutter_note_app/presentation/pages/note_item/note_item_page.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:go_router/go_router.dart';

class NoteListPage extends StatelessWidget {
  const NoteListPage({super.key});

  static const AppRouteRecord route = (name: 'Note List Page', path: '/');

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<NoteListBloc>(
          create: (BuildContext context) =>
              NoteListBloc(noteRepository: context.read<NoteRepository>())
                ..add(const NoteListEvent.getNotes()),
        ),
        BlocProvider<DeleteNoteBloc>(
          create: (BuildContext context) =>
              DeleteNoteBloc(noteRepository: context.read<NoteRepository>()),
        ),
      ],
      child: const _NoteList(),
    );
  }
}

class _NoteList extends StatefulWidget {
  const _NoteList();

  @override
  State<_NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<_NoteList>
    with SingleTickerProviderStateMixin {
  late final controller = SlidableController(this);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.title1(text: 'My Notes'),
      ),
      body: BlocBuilder<NoteListBloc, NoteListState>(
        builder: (context, state) {
          switch (state.status) {
            case NoteListStatus.loading:
              return const Center(
                child: CupertinoActivityIndicator(radius: 20),
              );
            case NoteListStatus.failure:
              return AppError(error: state.error ?? 'Failed request');
            case NoteListStatus.success:
              if (state.notes.isEmpty) return const AppEmpty();
              return BlocListener<DeleteNoteBloc, DeleteNoteState>(
                listener: (context, state) {
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
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final note = state.notes[index];
                    return InkWell(
                      onTap: () => context.goNamed(
                        NoteItemPage.route.name,
                        extra: {'note': jsonEncode(note)},
                      ),
                      child: Slidable(
                        key: Key(note.id),
                        endActionPane: ActionPane(
                          motion: const ScrollMotion(),
                          children: [
                            SlidableAction(
                              onPressed: (_) {
                                controller.close();
                                context
                                    .read<DeleteNoteBloc>()
                                    .add(DeleteNoteEvent.deletNote(note.id));
                              },
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: 'Delete',
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: AppText.title2(text: note.title),
                          subtitle: AppText.regular1(text: note.content),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext _, int __) =>
                      const SizedBox.shrink(),
                  itemCount: state.notes.length,
                ),
              );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(NoteItemPage.route.name),
        child: const Icon(Icons.add),
      ),
    );
  }
}
