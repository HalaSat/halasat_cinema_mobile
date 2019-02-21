import 'package:flutter/material.dart';

import 'src/models/post.dart';
import 'src/services/vodu.dart';
import 'src/widgets/post_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Future<Post> post = fetchPost(21);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HalaSat Cinema',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Center(
          child: FutureBuilder(
            future: post,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                final Post post = snapshot.data;
                return PostCard(post: post);
              } else if (snapshot.hasError)
                return Text(
                  snapshot.error,
                  style: TextStyle(color: Colors.red),
                );
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
