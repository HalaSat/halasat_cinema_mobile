import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';

import '../services/vodu.dart';
import '../widgets/other_card.dart';
import '../models/post.dart';

class PostPage extends StatelessWidget {
  final Post post;
  final Movie movie;

  PostPage({Key key, @required this.post})
      : movie = post.movies[0],
        super(key: key);

  @override
  Widget build(BuildContext context) {
    fetchPostList(1).then(print);
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 400.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: post.other.length,
            itemBuilder: (BuildContext context, int index) {
              final Other other = post.other[index];
              return OtherCard(other: other);
            },
          ),
        ),
      ],
    );
  }

  void _launchVideo(String url) {
    AndroidIntent intent = AndroidIntent(
      action: 'action_view',
      data: Uri.encodeFull(url),
      package: 'com.mxtech.videoplayer.ad',
    );
    intent.launch();
  }
}
