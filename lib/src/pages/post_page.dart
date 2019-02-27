import 'package:flutter/material.dart';
import 'package:android_intent/android_intent.dart';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/services/post.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card.dart';

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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return FutureBuilder(
        future: post,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final Post item = snapshot.data;
            final PostListItem movie = item.movies[0];

            return CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  expandedHeight: 250.0,
                  flexibleSpace: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      FadeInImage(
                        height: 300,
                        fit: BoxFit.cover,
                        image: NetworkImage('$kVoduBase/${movie.background}'),
                        placeholder:
                            AssetImage('assets/featured-placeholder.jpg'),
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Colors.red.withOpacity(.2), Colors.blue.withOpacity(.3)],
                          ),
                        ),
                      ),
                    ],
                  ),
                  // floating: true,
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      _buildRecommendedRow(context, item),
                      _buildRecommendedRow(context, item),
                      _buildRecommendedRow(context, item),
                    ],
                  ),
                ),
              ],
            );
          }
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

  Widget _buildRecommendedRow(BuildContext context, Post item) {
    return Container(
      height: 400.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: item.other.length,
        itemBuilder: (BuildContext context, int index) {
          final PostListItem other = item.other[index];
          return PostCard(
            postListItem: other,
            onPress: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => PostPage(postListItem: other),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
