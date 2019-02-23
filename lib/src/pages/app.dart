import 'package:flutter/material.dart';

import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/services/post.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';



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
