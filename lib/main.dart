import 'package:flutter/material.dart';
import 'bookmark.dart';

void main() {
  runApp(const MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  const MyBookmarksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BookmarksPage(),
    );
  }
}

class BookmarksPage extends StatelessWidget {
  BookmarksPage({super.key});
  final List<Bookmark> bookmarksList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Bookmarks"),
      ),
      body: BookmarksListWidget(bookmarksList: bookmarksList),
    );
  }
}

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
