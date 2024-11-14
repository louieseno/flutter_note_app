import 'package:flutter/material.dart';
import 'package:flutter_note_app/core/route/app_route.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';
import 'package:flutter_note_app/presentation/note_item/note_item_page.dart';
import 'package:go_router/go_router.dart';

class NoteListPage extends StatelessWidget {
  const NoteListPage({super.key});

  static const AppRouteRecord route = (name: 'Note List Page', path: '/');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.title1(text: 'My Notes'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => context
                .goNamed(NoteItemPage.route.name, extra: {'noteID': '$index'}),
            child: _NoteCard(
              key: Key('$index'),
              title: 'Title',
              content: 'Content',
            ),
          );
        },
        separatorBuilder: (BuildContext _, int __) => const SizedBox.shrink(),
        itemCount: 5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.goNamed(NoteItemPage.route.name),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _NoteCard extends StatelessWidget {
  const _NoteCard({
    required this.title,
    required this.content,
    super.key,
  });
  final String title;
  final String content;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText.title2(text: title),
            AppText.regular1(text: content),
          ],
        ),
      ),
    );
  }
}
