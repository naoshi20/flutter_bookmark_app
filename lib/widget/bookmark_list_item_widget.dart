import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../util/navigation_util.dart';

class BookmarksItemWidget extends StatelessWidget {
  const BookmarksItemWidget({Key? key, required this.bookmark})
      : super(key: key);

  final Bookmark bookmark;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () => navigateToViewBookmarkPage(bookmark, context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookmark.title,
                    style: Theme.of(context).textTheme.titleLarge),
                Text(bookmark.link,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Hero(tag: bookmark.link, child: const Icon(Icons.star, size: 40))
          ],
        ),
      ),
    );
  }
}
