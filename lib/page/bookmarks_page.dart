// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../widget/bookmarks_grid_widget.dart';
import '../widget/bookmarks_list_widget.dart';
import '../util/navigation_util.dart';
// import '../provider/providers.dart';

class BookmarksPage extends StatefulWidget {
  const BookmarksPage({Key? key, required this.bookmark}) : super(key: key);
  final Bookmark? bookmark;

  @override
  State<BookmarksPage> createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  bool isGridMode = false;
  final List<Bookmark> bookmarksList = [];

  @override
  Widget build(BuildContext context) {
    if (widget.bookmark != null) {
      bookmarksList.add(widget.bookmark as Bookmark);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Myyyy Bookmarks"),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  isGridMode = !isGridMode;
                });
              },
              icon: isGridMode
                  ? const Icon(Icons.list, color: Colors.white)
                  : const Icon(Icons.grid_on, color: Colors.white))
        ],
      ),
      body: isGridMode
          ? BookmarksGridWidget(bookmarksList: bookmarksList)
          : BookmarksListWidget(bookmarksList: bookmarksList),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          icon: const Icon(Icons.add),
          onPressed: () => onAddButtonPressed(context),
          label: const Text("Add")),
    );
  }

  void onAddButtonPressed(BuildContext context) {
    navigateToAddBookmarkPage(context);
  }
}
