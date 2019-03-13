import 'dart:async';

import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/search.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_card_vertical.dart';

class PostSearchDelegate extends SearchDelegate<String> {
  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder(
      future: searchPost(query, ''),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          PostList postList = snapshot.data;
          return ListView.builder(
            itemCount: postList.posts.length,
            itemBuilder: (context, index) {
              PostListItem post = postList.posts[index];

              return PostVerticalCard(
                post: post,
                onPressed: () => _goToPostPage(context, post),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final Future<PostList> posts =
        query.isEmpty ? searchPost(query, '/page') : searchPost(query, '');
    return FutureBuilder(
      future: posts,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          PostList postList = snapshot.data;

          return ListView.builder(
            itemCount: postList.posts.length,
            itemBuilder: (context, index) {
              PostListItem post = postList.posts[index];

              return ListTile(
                leading: Icon(
                  post.type == '0' ? Icons.movie : Icons.menu,
                ),
                title: Text(post.title),
                onTap: () => PostVerticalCard(
                      post: post,
                      onPressed: () => _goToPostPage(context, post),
                    ),
              );
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  void _goToPostPage(context, PostListItem post) => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => PostPage(postListItem: post),
        ),
      );
}
