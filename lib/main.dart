import 'package:flutter/material.dart';

import 'models/post.dart';
import 'services/vodu.dart';
import 'widgets/movie_card.dart';

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
                final Movie movie = post.movies[0];
                return MovieCard(movie: movie);
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
