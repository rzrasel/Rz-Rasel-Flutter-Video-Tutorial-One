// Rz Rasel Tutorial (Rashed - Uz - Zaman)
// Import flutter material package
import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

void main() => runApp(WebViewTutorial());

class WebViewTutorial extends StatefulWidget {
  @override
  WebViewTutorialState createState() => WebViewTutorialState();
}

class WebViewTutorialState extends State<WebViewTutorial> {
  WebViewController webViewController;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: WebView(
            initialUrl: "https://github.com/rzrasel",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController argWebViewController) {
              webViewController = argWebViewController;
            },
          ),
        ),
      ),
    );
  }
}
