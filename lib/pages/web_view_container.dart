import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final String url;

  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  final String _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: _url,
            ),
          ),
        ],
      ),
    );
  }
}
