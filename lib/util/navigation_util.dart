import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../page/add_bookmark_page.dart';
import 'package:go_router/go_router.dart';

void navigateToViewBookmarkPage(
    int bookmarkId, List<Bookmark> bookmarksList, BuildContext context) {
  context.goNamed("bookmarks", params: {
    "id": bookmarkId.toString(),
  }, extra: {
    "bookmarksList": bookmarksList,
  });
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const AddBookmarksPage()));
}
