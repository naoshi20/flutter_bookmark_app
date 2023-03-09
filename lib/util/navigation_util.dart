import 'package:flutter/material.dart';
import '../page/view_bookmark_page.dart';
import '../page/add_bookmark_page.dart';

void navigateToViewBookmarkPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ViewBookmarksPage()));
}

void navigateToAddBookmarkPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => const AddBookmarksPage()));
}
