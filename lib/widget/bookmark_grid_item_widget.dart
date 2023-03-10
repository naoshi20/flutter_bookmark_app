import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../util/navigation_util.dart';

class BookmarksGridItemWidget extends StatelessWidget {
  const BookmarksGridItemWidget(
      {Key? key, required this.bookmarkId, required this.bookmarksList})
      : super(key: key);

  final int bookmarkId;
  final List<Bookmark> bookmarksList;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: InkWell(
          onTap: () =>
              navigateToViewBookmarkPage(bookmarkId, bookmarksList, context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(bookmarksList[bookmarkId].title,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: 6,
              ),
              Text(bookmarksList[bookmarkId].link,
                  style: Theme.of(context).textTheme.bodyMedium),
              const SizedBox(
                height: 6,
              ),
              Hero(
                  tag: bookmarksList[bookmarkId].link,
                  child: const Icon(Icons.star))
            ],
          ),
        ),
      ),
    );
  }
}
