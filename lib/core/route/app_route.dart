import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_note_app/data/model/note/note_model.dart';
import 'package:flutter_note_app/presentation/pages/not_found/not_found_page.dart';
import 'package:flutter_note_app/presentation/pages/note_item/note_item_page.dart';
import 'package:flutter_note_app/presentation/pages/note_list/note_list_page.dart';
import 'package:go_router/go_router.dart';

typedef AppRouteRecord = ({String name, String path});
typedef RouteExtra = Map<String, String>;

class AppRoute {
  AppRoute._();

  static GoRouter router = GoRouter(
    errorPageBuilder: (context, state) {
      final location = state.uri;
      return NoTransitionPage(child: NotFoundPage(invalidUri: location));
    },
    routes: <RouteBase>[
      GoRoute(
        path: NoteListPage.route.path,
        name: NoteListPage.route.name,
        builder: (BuildContext context, GoRouterState state) {
          return const NoteListPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: NoteItemPage.route.path,
            name: NoteItemPage.route.name,
            builder: (BuildContext context, GoRouterState state) {
              Note? note;
              if (state.extra is RouteExtra) {
                final extra = state.extra! as RouteExtra;
                final initialNote =
                    jsonDecode(extra['note'] ?? '') as Map<String, dynamic>;
                note = Note.fromJson(initialNote);
              }

              return NoteItemPage(initialNote: note);
            },
          ),
        ],
      ),
    ],
  );
}
