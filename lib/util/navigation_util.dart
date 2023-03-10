import 'package:flutter/material.dart';
import '../model/bookmark.dart';
// import '../page/add_bookmark_page.dart';
import 'package:go_router/go_router.dart';

void navigateToViewBookmarkPage(
    int bookmarkId, List<Bookmark> bookmarksList, BuildContext context) {
  context.goNamed("bookmarks", params: {
    "id": bookmarkId.toString(),
  }, extra: {
    "bookmarksList": bookmarksList,
  });
}

void navigateToAddBookmarkPage(BuildContext context) {
  context.goNamed("add");
  return;
  // return await context.pushAsync('add/');
  //return Navigator.of(context)
  //    .push(MaterialPageRoute(builder: (context) => const AddBookmarksPage()));
}
