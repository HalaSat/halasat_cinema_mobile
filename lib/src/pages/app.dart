import 'package:flutter/material.dart';

import 'post_page.dart';
import '../models/post_list.dart';
import '../models/post.dart';
import '../services/vodu.dart';
import '../widgets/post_card.dart';

class App extends StatelessWidget {
  final Future<Post> post = fetchPost(21);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HalaSat Cinema',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            Center(
              child: FutureBuilder(
                future: post,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    final PostListItem post = snapshot.data.movies[0];
                    return PostCard(
                      postListItem: post,
                      onPress: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => PostPage(postListItem: post),
                          ),
                        );
                      },
                    );
                  } else if (snapshot.hasError)
                    return Text(
                      snapshot.error,
                      style: TextStyle(color: Colors.red),
                    );
                  return CircularProgressIndicator();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
