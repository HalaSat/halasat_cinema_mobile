import 'package:flutter/material.dart';

import 'package:halasat_cinema_mobile/src/widgets/post_row.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HalaSat Cinema',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: PostRow(),
      ),
    );
  }

}
