import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../util/navigation_util.dart';

class BookmarksTileWidget extends StatelessWidget {
  const BookmarksTileWidget({Key? key, required this.bookmark})
      : super(key: key);

  final Bookmark bookmark;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title:
          Text(bookmark.title, style: Theme.of(context).textTheme.titleLarge),
      subtitle:
          Text(bookmark.link, style: Theme.of(context).textTheme.bodyMedium),
      onTap: () => navigateToViewBookmarkPage(bookmark, context),
    );
  }
}
