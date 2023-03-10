import 'package:command_line_project/model/bookmark.dart';
import 'package:flutter/material.dart';
import '../widget/view_web_page_widget.dart';

class ViewBookmarksPage extends StatelessWidget {
  const ViewBookmarksPage(
      {Key? key, required this.bookmarkId, required this.bookmarksList})
      : super(key: key);
  final int bookmarkId;
  final List<Bookmark> bookmarksList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmarksList[bookmarkId].title),
        actions: <Widget>[
          Hero(
            tag: bookmarksList[bookmarkId].link,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.star),
            ),
          )
        ],
      ),
      body: ViewWebPageWidget(url: bookmarksList[bookmarkId].link),
      //body: ,
    );
  }
}
