// IMPORTS
import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';

// CONSTANTS
const int kTitleMaxLength = 16;
const int kGenreMaxLength = 13;

typedef void OnTapCallback();

// WIDGETS
class PostCard extends StatelessWidget {
  PostCard({Key key, @required this.postListItem, @required this.onPress})
      : assert(postListItem != null),
        super(key: key);

  final PostListItem postListItem;
  final OnTapCallback onPress;
  
  @override
  Widget build(BuildContext context) {
    final String title = postListItem.title.length > kTitleMaxLength
        ? postListItem.title.split('').sublist(0, kTitleMaxLength).join() +
            '...'
        : postListItem.title;
    final String genre = postListItem.genre.length > kGenreMaxLength
        ? postListItem.genre.split('').sublist(0, kGenreMaxLength).join() +
            '...'
        : postListItem.genre;

    return Container(
      width: 150.0,
      child: InkWell(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  _buildPoster(context),
                  _buildTitle(context, title),
                  _buildBottomInfo(context, genre),
                ],
              ),
            ),
          ],
        ),
        onTap: onPress,
      ),
    );
  }

  Widget _buildPoster(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: FadeInImage(
        height: 240.5,
        fit:BoxFit.cover,
        image: NetworkImage(postListItem.poster),
        placeholder: AssetImage('assets/post-placeholder.png'),
      ),
    );
  }

  Widget _buildTitle(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.only(top: 3.0),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.body2,
      ),
    );
  }

  Widget _buildBottomInfo(BuildContext context, String genre) {
    return Padding(
      padding: const EdgeInsets.only(top: 3.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Text(
            genre,
            style: Theme.of(context).textTheme.caption,
          )),
          Padding(
            padding: const EdgeInsets.only(right: 2.0),
            child: Icon(
              Icons.star,
              size: Theme.of(context).textTheme.caption.fontSize,
              color: Colors.orange,
            ),
          ),
          Text(
            postListItem.imdbrate,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }
}
