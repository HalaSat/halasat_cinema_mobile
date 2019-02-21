import 'package:flutter/material.dart';

import '../pages/post_page.dart';
import '../models/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final Movie movie;

  PostCard({Key key, @required this.post})
      : assert(post != null),
        movie = post.movies[0],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        child: Text(movie.title),
        onTap: () => _handleTap(context),
      ),
    );
  }

  void _handleTap(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return PostPage(post: post);
        },
      ),
    );
  }
}
