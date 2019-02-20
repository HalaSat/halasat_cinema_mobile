import 'package:flutter/material.dart';

import '../models/post.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;

  MovieCard({Key key, @required this.movie})
      : assert(movie != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(movie.title),
    );
  }
}
