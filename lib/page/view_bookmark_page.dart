import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookmarksPage extends StatefulWidget {
  const ViewBookmarksPage({super.key});

  @override
  State<ViewBookmarksPage> createState() => _ViewBookmarksPageState();
}

class _ViewBookmarksPageState extends State<ViewBookmarksPage> {
  var _isLoadingWebPage = true;

  late WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {
          setState(() {
            _isLoadingWebPage = false;
          });
        },
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://www.youtube.com/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://google.com'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ViewBookMarks"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          WebViewWidget(
            controller: controller,
          ),
          _isLoadingWebPage ? const CircularProgressIndicator() : Container(),
        ],
      ),
      //body: ,
    );
  }
}
