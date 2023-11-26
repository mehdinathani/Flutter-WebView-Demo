import 'package:flutter/material.dart';
import 'package:webviewdemo/Screens/home_view.dart';
import 'package:webviewdemo/Screens/web_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (content) => const HomeView(),
        '/webViewContainer': (context) => const WebViewContainer()
      },
    );
  }
}
