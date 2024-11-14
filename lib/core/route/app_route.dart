import 'package:flutter/widgets.dart';
import 'package:flutter_note_app/presentation/not_found/not_found_page.dart';
import 'package:flutter_note_app/presentation/note_item/note_item_page.dart';
import 'package:flutter_note_app/presentation/note_list/note_list_page.dart';
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
              String? noteID;
              if (state.extra is RouteExtra) {
                noteID = (state.extra! as RouteExtra)['noteID'];
              }
              return NoteItemPage(noteID: noteID);
            },
          ),
        ],
      ),
    ],
  );
}
