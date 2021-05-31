import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Songs extends StatefulWidget {
  @override
  _SongsState createState() => _SongsState();
}

class _SongsState extends State<Songs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebView(
        initialUrl:
            "https://codesomeyash01.web.app/project%20pages/meditation/index.html",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
