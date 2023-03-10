import 'package:flutter/material.dart';
import '../model/bookmark.dart';
import '../page/bookmarks_page.dart';
import 'package:go_router/go_router.dart';

class AddBookmarksPage extends StatefulWidget {
  const AddBookmarksPage({super.key});

  @override
  State<AddBookmarksPage> createState() => _AddBookmarksPageState();
}

class _AddBookmarksPageState extends State<AddBookmarksPage> {
  final _titleTextController = TextEditingController();
  final _linkTextController = TextEditingController();
  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add Bookmarks"),
        ),
        floatingActionButton: Builder(
            builder: (BuildContext context) => FloatingActionButton(
                  backgroundColor: Colors.green,
                  onPressed: () {
                    String title = _titleTextController.text;
                    String link = _linkTextController.text;

                    ScaffoldMessenger.of(context).hideCurrentSnackBar();
                    if (isInputValid(title, link)) {
                      // Navigator.pop(context, Bookmark(title, link));
                      context.goNamed("route", extra: {
                        "bookmark": Bookmark(title, link),
                      });
                    } else {
                      showInputError(context, title, link);
                    }
                  },
                  child: const Icon(Icons.check),
                )),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            TextFormField(
              autofocus: true,
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
              onFieldSubmitted: (textInput) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              decoration: const InputDecoration(
                icon: Icon(Icons.title),
                labelText: "Title",
                hintText: "Title of the bookmark",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _linkTextController,
              focusNode: _linkFocusNode,
              decoration: const InputDecoration(
                icon: Icon(Icons.link),
                labelText: "URL",
                hintText: "Webpage link",
                border: OutlineInputBorder(),
              ),
            ),
          ]),
        ));
  }

  @override
  void dispose() {
    _titleTextController;
    _linkTextController;
    _linkFocusNode;
    super.dispose();
  }

  bool isInputValid(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if (title.isEmpty) {
      showSnackBar(context, "Title cannot be empty");
    } else if (link.isEmpty) {
      showSnackBar(context, "Link cannot be empty");
    }
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
}
