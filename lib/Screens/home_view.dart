import 'package:flutter/material.dart';
import 'package:webviewdemo/global.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController _userLink = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        color: Colors.blue,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "WELCOME",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "To Flutte WebView",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.09,
                  ),
                  const Text(
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                      "Here I will Show you the example of WebView on flutter App"),
                  SizedBox(
                    height: mediaHeight * 0.05,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: _userLink,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      label: Text(
                        "https//www.example.com",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaHeight * 0.07,
                  ),
                  const Text(
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15, color: Colors.white),
                      "Please Type Complete URL including https:// on the above field or leave blank to explore the webview of flutter."),
                  SizedBox(
                    height: mediaHeight * 0.07,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(),
                    onPressed: () {
                      if (isValidURL(_userLink.text)) {
                        userURL = _userLink.text;
                      } else {
                        userURL = "https://flutter.dev/";
                      }

                      Navigator.of(context).pushNamed('/webViewContainer');
                    },
                    child: const Text("Open WebView "),
                  )
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  // Function to check if the entered URL is valid
  bool isValidURL(String url) {
    // Use a regular expression to check if the URL starts with "https://"
    RegExp regExp = RegExp(r'^https://');
    return regExp.hasMatch(url);
  }
}
