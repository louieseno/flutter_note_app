import 'package:flutter/material.dart';
import 'package:flutter_note_app/core/widget/app_text.dart';
import 'package:flutter_note_app/presentation/pages/note_list/note_list_page.dart';
import 'package:go_router/go_router.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({required this.invalidUri, super.key});

  final Uri invalidUri;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                AppText.subtitle1(text: 'Oops! Page Not found'),
                const SizedBox(height: 8),
                AppText.subtitle2(
                  text: """
                      It seems you've requested a wrong URI '$invalidUri'
                      which was not found in this application.""",
                ),
                const SizedBox(height: 24),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.goNamed(NoteListPage.route.name),
              child: AppText.regular2(text: 'Back to My List'),
            ),
          ],
        ),
      ),
    );
  }
}
