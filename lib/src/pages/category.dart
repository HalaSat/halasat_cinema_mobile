import 'dart:async';

import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/post_list_category.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card_vertical.dart';
import 'package:incrementally_loading_listview/incrementally_loading_listview.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({
    this.category = 1,
    this.title = 'Recommended',
    this.titleBorderColor = Colors.red,
  });

  final int category;
  final String title;
  final Color titleBorderColor;

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with AutomaticKeepAliveClientMixin {
  List<PostListItem> _dataList;

  int _pages;
  int _nextPage = 2;

  @override
  void initState() {
    fetchPostListCategory(widget.category, 1).then(
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
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          margin: EdgeInsets.only(bottom: 10.0),
          child: _dataList != null
              ? _buildList(context, _dataList)
              : Center(
                  child: Container(
                    height: 330.0,
                    child: Align(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, List<PostListItem> list) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(vertical: 5.0),
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
        Expanded(
          child: IncrementallyLoadingListView(
            loadMore: _loadMore,
            hasMore: () => (_nextPage <= _pages),
            itemCount: () => list.length,
            scrollDirection: Axis.vertical,
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
    return PostVerticalCard(
      post: list[index],
      onPressed: () {
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
      final PostList data =
          await fetchPostListCategory(widget.category, _nextPage);

      setState(() {
        _dataList.addAll(data.posts);
      });

      _nextPage++;

      return true;
    }
    return false;
  }
}
