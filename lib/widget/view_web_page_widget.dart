import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  const ViewWebPageWidget({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<ViewWebPageWidget> createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
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
    ..loadRequest(Uri.parse(widget.url));

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        WebViewWidget(
          controller: controller,
        ),
        _isLoadingWebPage ? const CircularProgressIndicator() : Container(),
      ],
    );
  }
}
