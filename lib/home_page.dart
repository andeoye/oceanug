import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("oceanug welcomes you to shop",
        textAlign: TextAlign.center,),
      ),
    body: const WebView(
      initialUrl: "https://oceanug.com/",
      javascriptMode: JavascriptMode.unrestricted,
    ));
    
  }
}