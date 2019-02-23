import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';

import '../services/vodu.dart';
import '../models/post_list.dart';
import '../widgets/post_card.dart';
import '../models/post.dart';

class PostPage extends StatefulWidget {
  PostPage({Key key, @required this.postListItem}) : super(key: key);

  final PostListItem postListItem;

  @override
  _PostPageState createState() {
    return _PostPageState();
  }
}

class _PostPageState extends State<PostPage> {
  Future<Post> post;

  @override
  void initState() {
    int id = int.parse(widget.postListItem.id);
    post = fetchPost(id);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.postListItem.title),
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return FutureBuilder(
        future: post,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final Post post = snapshot.data;
          if (snapshot.hasData)
            return ListView(
              children: <Widget>[
                Container(
                  height: 400.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: post.other.length,
                    itemBuilder: (BuildContext context, int index) {
                      final PostListItem other = post.other[index];
                      return PostCard(
                        postListItem: other,
                        onPress: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) =>
                                  PostPage(postListItem: other),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            );
          return Center(child: CircularProgressIndicator());
        });
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
