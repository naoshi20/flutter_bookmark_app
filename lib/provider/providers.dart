import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../model/bookmark.dart';

final bookmarksProvider = ChangeNotifierProvider((ref) => Bookmarks());

class Bookmarks extends ChangeNotifier {
  final List<Bookmark> _bookmarksList = [];

  List<Bookmark> get bookmarksList => _bookmarksList;

  void addBookmark(Bookmark bookmark) {
    _bookmarksList.add(bookmark);
    notifyListeners();
  }
}
