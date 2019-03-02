import 'dart:async';

import 'package:flutter/material.dart';
import 'package:incrementally_loading_listview/incrementally_loading_listview.dart';

import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/post_list.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card.dart';

typedef Future<PostList> FetchList(int category, int page);

class PostRow extends StatefulWidget {
  const PostRow(
      {this.fetchList = fetchPostList,
      this.category = 1,
      this.title = 'Recommended',
      this.titleBorderColor = Colors.red});

  final FetchList fetchList;
  final int category;
  final String title;
  final Color titleBorderColor;

  @override
  _PostRowState createState() => _PostRowState();
}

class _PostRowState extends State<PostRow> with AutomaticKeepAliveClientMixin {
  List<PostListItem> _dataList;

  int _pages;
  int _nextPage = 2;

  @override
  void initState() {
    widget.fetchList(widget.category, 1).then(
          (PostList data) => setState(
                () {
                  _dataList = data.posts.toList();
                  _pages = data.pages;
                },
              ),
        );

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10.0),
      child: _dataList != null
          ? _buildList(context, _dataList)
          : Center(
              child: Container(
                  height: 330.0,
                  child: Align(child: LinearProgressIndicator())),
            ),
    );
  }

  Widget _buildList(BuildContext context, List<PostListItem> list) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 5.0),
          margin: EdgeInsets.only(bottom: 8.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: widget.titleBorderColor,
              ),
            ),
          ),
          child: Text(
            widget.title.toUpperCase(),
            style: Theme.of(context).textTheme.body1,
          ),
        ),
        Container(
          height: 310.0,
          child: IncrementallyLoadingListView(
            loadMore: _loadMore,
            hasMore: () => (_nextPage <= _pages),
            itemCount: () => list.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) =>
                _buildListItem(context, list, index),
          ),
        ),
      ],
    );
  }

  Widget _buildListItem(
    BuildContext context,
    List<PostListItem> list,
    int index,
  ) {
    return PostCard(
      postListItem: list[index],
      onPress: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => PostPage(postListItem: list[index]),
          ),
        );
      },
    );
  }

  Future<bool> _loadMore() async {
    if (_nextPage <= _pages) {
      final PostList data = await widget.fetchList(widget.category, _nextPage);

      setState(() {
        _dataList.addAll(data.posts);
      });

      _nextPage++;

      return true;
    }
    return false;
  }
}
