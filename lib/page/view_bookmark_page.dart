import 'package:flutter/material.dart';
import '../widget/view_web_page_widget.dart';

class ViewBookmarksPage extends StatefulWidget {
  const ViewBookmarksPage({super.key});

  @override
  State<ViewBookmarksPage> createState() => _ViewBookmarksPageState();
}

class _ViewBookmarksPageState extends State<ViewBookmarksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ViewBookMarks"),
      ),
      body: const ViewWebPageWidget(),
      //body: ,
    );
  }
}
