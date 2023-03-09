import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import 'bookmark_list_item_widget.dart';

class BookmarksListWidget extends StatelessWidget {
  const BookmarksListWidget({Key? key, required this.bookmarksList})
      : super(key: key);

  final List<Bookmark> bookmarksList;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getBookmarkWidgetsList(),
    );
  }

  List<BookmarksItemWidget> getBookmarkWidgetsList() {
    List<BookmarksItemWidget> list = [];

    for (Bookmark bookmark in bookmarksList) {
      list.add(BookmarksItemWidget(bookmark: bookmark));
    }

    return list;
  }
}
