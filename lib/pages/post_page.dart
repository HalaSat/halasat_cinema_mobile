import 'package:flutter/material.dart';

import '../widgets/other_card.dart';
import '../models/post.dart';

class PostPage extends StatelessWidget {
  final Post post;
  final Movie movie;

  PostPage({Key key, @required this.post}) : movie = post.movies[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: post.other.length,
      itemBuilder: (BuildContext context, int index) {
        final Other other = post.other[index];
        return OtherCard(other: other);
      },
    );
  }
}
