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
      children: <Widget>[
        BookmarksItemWidget(bookmarksItem: bookmarksList[0]),
        BookmarksItemWidget(bookmarksItem: bookmarksList[1]),
      ],
    );
  }
}
