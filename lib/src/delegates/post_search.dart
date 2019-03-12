import 'package:flutter/material.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/search.dart';

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

              return _buildResultItem(context, post);
            },
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    );
  }

  Padding _buildResultItem(BuildContext context, PostListItem post) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: InkWell(
        child: Container(
          height: 240.5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: FadeInImage(
                  width: 150.0,
                  height: 240.5,
                  fit: BoxFit.cover,
                  image: NetworkImage(post.poster),
                  placeholder: AssetImage('assets/post-placeholder.png'),
                ),
              ),
              Container(
                child: Container(
                  padding: const EdgeInsets.only(left: 10.0),
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        post.title,
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.body2,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              post.year,
                              style: Theme.of(context).textTheme.caption,
                            ),
                            Row(
                              children: [
                                Text(
                                  post.imdbrate,
                                  style: Theme.of(context).textTheme.caption,
                                ),
                                Icon(
                                  Icons.star,
                                  size: Theme.of(context)
                                      .textTheme
                                      .caption
                                      .fontSize,
                                  color: Theme.of(context).accentColor,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Text(post.story),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        onTap: () => _goToPostPage(context, post),
      ),
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
                  post.type == '0' ? Icons.movie : Icons.tv,
                ),
                title: Text(post.title),
                onTap: () => _goToPostPage(context, post),
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
