import 'package:flutter/material.dart';
import 'package:flutter_note_app/core/route/app_route.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';
import 'package:go_router/go_router.dart';

class NoteItemPage extends StatelessWidget {
  const NoteItemPage({super.key, this.noteID});

  static const AppRouteRecord route = (name: 'Note', path: '/note');

  final String? noteID;

  @override
  Widget build(BuildContext context) {
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
          Padding(
            padding: const EdgeInsets.all(8),
            child: MenuAnchor(
              alignmentOffset: const Offset(-55, 0),
              builder:
                  (BuildContext _, MenuController controller, Widget? child) {
                return IconButton(
                  onPressed: () => controller.isOpen
                      ? controller.close()
                      : controller.open(),
                  icon: const Icon(Icons.more_horiz),
                  tooltip: 'Show menu',
                );
              },
              menuChildren: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      AppText.regular1(
                        text: 'Delete',
                        textColor: Colors.red,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppText.regular1(text: '$noteID'),
          ],
        ),
      ),
    );
  }
}
