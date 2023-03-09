import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../page/view_bookmark_page.dart';
import '../page/add_bookmark_page.dart';

void navigateToViewBookmarkPage(Bookmark bookmark, BuildContext context) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => ViewBookmarksPage(bookmark: bookmark)));
}

Future navigateToAddBookmarkPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const AddBookmarksPage()));
}
