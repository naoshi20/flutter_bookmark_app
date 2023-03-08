import 'package:flutter/material.dart';
import 'page/bookmarks_page.dart';

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
