import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/data/search_mock.dart';
import 'package:halasat_cinema_mobile/src/models/featured.dart';
import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/featured.dart';
import 'package:halasat_cinema_mobile/src/services/post.dart';
import 'package:halasat_cinema_mobile/src/services/post_list_category.dart';
import 'package:halasat_cinema_mobile/src/services/search.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_row.dart';

class App extends StatelessWidget {
  final Future<Featured> _featured = fetchFeatured();
  final List<Widget> _postRows = [
    PostRow(
      title: 'Latest Posts',
      titleBorderColor: Colors.blue,
    ),
    PostRow(
      title: 'TV Shows',
      titleBorderColor: Colors.purple,
      fetchList: fetchPostListCategory,
      category: 1,
    ),
    PostRow(
      title: 'US Box Office',
      titleBorderColor: Colors.cyan,
      fetchList: fetchPostListCategory,
      category: 10,
    ),
    PostRow(
      title: 'Bollywood Movies',
      titleBorderColor: Colors.purple,
      fetchList: fetchPostListCategory,
      category: 3,
    ),
    PostRow(
      title: 'Bollywood Shows',
      titleBorderColor: Colors.purple,
      fetchList: fetchPostListCategory,
      category: 8,
    ),
    PostRow(
      title: 'Arabic Movies',
      titleBorderColor: Colors.brown,
      fetchList: fetchPostListCategory,
      category: 7,
    ),
    PostRow(
      title: 'Arabic Shows',
      titleBorderColor: Colors.brown,
      fetchList: fetchPostListCategory,
      category: 4,
    ),
    PostRow(
      title: 'Asian Movies',
      titleBorderColor: Colors.green,
      fetchList: fetchPostListCategory,
      category: 6,
    ),
    PostRow(
      title: 'Asian Shows',
      titleBorderColor: Colors.green,
      fetchList: fetchPostListCategory,
      category: 5,
    ),
    PostRow(
      title: 'Anime Movies',
      titleBorderColor: Colors.amber,
      fetchList: fetchPostListCategory,
      category: 9,
    ),
    PostRow(
      title: 'Anime Shows',
      titleBorderColor: Colors.amber,
      fetchList: fetchPostListCategory,
      category: 2,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HalaSat Cinema',
      theme: ThemeData.dark()
          .copyWith(primaryColor: Colors.red, accentColor: Colors.red),
      home: Scaffold(
        appBar: AppBar(
          title: Text('HalaSat Cinema'),
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      showSearch(
                          context: context, delegate: PostSearchDelegate());
                    },
                  ),
            ),
          ],
        ),
        body: SafeArea(
          bottom: false,
          child: ListView(
            addAutomaticKeepAlives: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: FutureBuilder(
                  future: _featured,
                  builder:
                      (BuildContext context, AsyncSnapshot<Featured> snapshot) {
                    if (snapshot.hasData) {
                      Featured featured = snapshot.data;
                      return _buildCarouselSlider(context, featured);
                    } else
                      return Align(child: CircularProgressIndicator());
                  },
                ),
              ),
            ]..addAll(_postRows),
          ),
        ),
      ),
    );
  }

  CarouselSlider _buildCarouselSlider(BuildContext context, Featured featured) {
    return CarouselSlider(
      autoPlay: true,
      height: 200.0,
      items: featured.featured.map((FeaturedItem item) {
        return Builder(
          builder: (BuildContext context) {
            return _buildFeaturedPost(context, item);
          },
        );
      }).toList(),
    );
  }

  Widget _buildFeaturedPost(BuildContext context, FeaturedItem item) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            FadeInImage(
              fit: BoxFit.cover,
              placeholder: AssetImage('assets/featured-placeholder.jpg'),
              image: NetworkImage(
                '$kVoduBase/${item.large}',
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.red.withOpacity(0.5),
                    Colors.blue.withOpacity(0.3),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10.0,
              left: 10.0,
              child: Text(
                item.title,
                style: TextStyle(fontSize: 15.0),
              ),
            )
          ],
        ),
      ),
      onTap: () async {
        Post res = await fetchPost(int.parse(item.id));
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context) {
            return PostPage(
              postListItem: res.movies[0],
            );
          }),
        );
      },
    );
  }
}

class PostSearchDelegate extends SearchDelegate<String> {
  final List<PostListItem> posts = searchList.posts.toList();

  final List<PostListItem> recentPosts =
      searchList.posts.sublist(4, 12).toList();

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
