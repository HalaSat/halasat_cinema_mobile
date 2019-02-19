import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'services/vodu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    fetchPost(21).then(print);
    return MaterialApp(
      title: 'HalaSat Cinema',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: Center(
        child: FlatButton(
          child: Text('HalaSat Cinema'),
          onPressed: () async {
            String url = 'https://flutter.io';
            if (await canLaunch(url)) await launch(url, forceWebView: true);
          },
        ),
      )),
    );
  }
}
