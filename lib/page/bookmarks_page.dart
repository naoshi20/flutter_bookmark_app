import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../widget/bookmarks_list_widget.dart';

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
