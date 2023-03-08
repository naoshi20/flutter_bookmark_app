import 'package:flutter/material.dart';
import '../model/bookmark.dart';

class BookmarksItemWidget extends StatelessWidget {
  const BookmarksItemWidget({Key? key, required this.bookmarksItem})
      : super(key: key);

  final Bookmark bookmarksItem;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bookmarksItem.title,
              style: Theme.of(context).textTheme.titleLarge),
          Text(bookmarksItem.link,
              style: Theme.of(context).textTheme.bodyMedium),
        ],
      ),
    );
  }
}
