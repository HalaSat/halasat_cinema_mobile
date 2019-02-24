import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/post_list.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card.dart';

class PostRow extends StatefulWidget {
  final Future<PostList> postList = fetchPostList(1);
  @override
  _PostRowState createState() => _PostRowState();
}

class _PostRowState extends State<PostRow> {
  ScrollController _scrollController;
  List<PostListItem> _dataList;
  int _pages;
  int _nextPage = 2;

  @override
  void initState() {
    widget.postList.then(
      (PostList data) => setState(() {
            _dataList = data.posts.toList();
            _pages = data.pages;
          }),
    );

    _scrollController = ScrollController();

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _dataList != null
        ? _buildList(context, _dataList)
        : Center(
            child: CircularProgressIndicator(),
          );
  }

  Widget _buildList(BuildContext context, List<PostListItem> list) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleNotification,
      child: ListView.builder(
        controller: _scrollController,
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            _buildListItem(context, list, index),
      ),
    );
  }

  Widget _buildListItem(
      BuildContext context, List<PostListItem> list, int index) {
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

  bool _handleNotification(ScrollNotification notification) {
    if (notification is ScrollNotification) {
      if (_scrollController.position.extentAfter == 0) {
        _loadMore();
      }
    }
    return false;
  }

  void _loadMore() {
    print(_nextPage);
    if (_nextPage <= _pages)
      fetchPostList(_nextPage).then((data) {
        setState(() {
          if (_nextPage < _pages) _nextPage++;
          _dataList.addAll(data.posts);
        });
      });
  }
}
