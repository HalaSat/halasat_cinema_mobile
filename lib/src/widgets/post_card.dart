// IMPORTS
import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';

// CONSTANTS
const int kTitleMaxLength = 12;
const int kCategoryMaxLength = 14;

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
    final String category = postListItem.category.length > kCategoryMaxLength
        ? postListItem.category.split('').sublist(0, kCategoryMaxLength).join() +
            '...'
        : postListItem.category;

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
                  _buildTopInfo(context, title),
                  _buildBottomInfo(context, category),
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
        fit: BoxFit.cover,
        image: NetworkImage(postListItem.poster),
        placeholder: AssetImage('assets/post-placeholder.png'),
      ),
    );
  }

  Widget _buildTopInfo(BuildContext context, String title) {
    return Container(
      padding: const EdgeInsets.only(top: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.body2,
          ),
          Text(
            postListItem.year,
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomInfo(BuildContext context, String category) {
    TextStyle textStyle = Theme.of(context).textTheme.caption;

    return Padding(
      padding: const EdgeInsets.only(top: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            category,
            style: textStyle,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 2.0),
                child: Icon(
                  Icons.star,
                  size: textStyle.fontSize,
                  color: Colors.orange,
                ),
              ),
              Text(
                postListItem.imdbrate,
                style: textStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
