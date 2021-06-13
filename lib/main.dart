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
      debugShowCheckedModeBanner: false,
      home: WillPopScope(
        onWillPop: () async {
          String url = await webViewController.currentUrl();
          if(url == "https://github.com/rzrasel") {
            return true;
          } else {
            webViewController.goBack();
            return false;
          }
      },
        child: Scaffold(
          body: Container(
            child: SafeArea(
              child: WebView(
                initialUrl: "https://github.com/rzrasel",
                javascriptMode: JavascriptMode.unrestricted,
                onWebViewCreated: (WebViewController argWebViewController) {
                  webViewController = argWebViewController;
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//webview_flutter 2.0.8 => https://pub.dev/packages/webview_flutter