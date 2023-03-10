import 'package:flutter/material.dart';
import 'page/bookmarks_page.dart';
import 'package:go_router/go_router.dart';
import '../page/view_bookmark_page.dart';
import '../page/add_bookmark_page.dart';
import '../model/bookmark.dart';

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      name: "route",
      path: "/",
      builder: (context, state) {
        Bookmark? bookmark;
        if (state.extra != null) {
          final extra =
              state.extra! as Map; //ここで型を指定しないとObjectとして読み取られ中身にアクセスできない。
          bookmark = extra["bookmark"];
        }
        return BookmarksPage(bookmark: bookmark);
      },
    ),
    GoRoute(
      name: "bookmarks",
      path: "/bookmarks/:id",
      builder: (context, state) {
        final extra =
            state.extra! as Map; //ここで型を指定しないとObjectとして読み取られ中身にアクセスできない。
        return ViewBookmarksPage(
          bookmarkId: int.parse(state.params["id"]!),
          bookmarksList: extra["bookmarksList"] as List<Bookmark>,
        );
      },
    ),
    GoRoute(
      name: "add",
      path: "/add",
      builder: (context, state) => const AddBookmarksPage(),
    ),
  ],
);

void main() {
  runApp(const MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  const MyBookmarksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
