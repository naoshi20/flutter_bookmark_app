import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../util/navigation_util.dart';

class BookmarksItemWidget extends StatelessWidget {
  const BookmarksItemWidget(
      {Key? key, required this.bookmarkId, required this.bookmarksList})
      : super(key: key);

  final int bookmarkId;
  final List<Bookmark> bookmarksList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () =>
            navigateToViewBookmarkPage(bookmarkId, bookmarksList, context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bookmarksList[bookmarkId].title,
                    style: Theme.of(context).textTheme.titleLarge),
                Text(bookmarksList[bookmarkId].link,
                    style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
            Hero(
                tag: bookmarksList[bookmarkId].link,
                child: const Icon(Icons.star, size: 40))
          ],
        ),
      ),
    );
  }
}
