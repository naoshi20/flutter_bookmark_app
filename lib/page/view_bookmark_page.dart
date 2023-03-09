import 'package:command_line_project/model/bookmark.dart';
import 'package:flutter/material.dart';
import '../widget/view_web_page_widget.dart';

class ViewBookmarksPage extends StatelessWidget {
  const ViewBookmarksPage({Key? key, required this.bookmark}) : super(key: key);
  final Bookmark bookmark;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title),
        actions: <Widget>[
          Hero(
            tag: bookmark.link,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.star),
            ),
          )
        ],
      ),
      body: ViewWebPageWidget(url: bookmark.link),
      //body: ,
    );
  }
}
