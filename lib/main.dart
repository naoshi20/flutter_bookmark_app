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
        Text(bookmarksList[0].title),
        Text(bookmarksList[1].title),
      ],
    );
  }
}
