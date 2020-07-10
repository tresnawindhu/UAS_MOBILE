import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

void main() => runApp(Undiksha());

class Undiksha extends StatefulWidget {
  State<StatefulWidget> createState() => _Undiksha();
}

class _Undiksha extends State<Undiksha> {
  final Completer<WebViewController> _webcontrol =
      Completer<WebViewController>();

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Undiksha'),
        ),
        body: WebView(
          initialUrl: "https://undiksha.ac.id/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webiewController) {
            _webcontrol.complete(webiewController);
          },
        ),
      ),
    );
  }
}
