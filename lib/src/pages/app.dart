import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/delegates/post_search.dart';
import 'package:halasat_cinema_mobile/src/models/category.dart';
import 'package:halasat_cinema_mobile/src/models/featured.dart';
import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/pages/category.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/categories.dart';
import 'package:halasat_cinema_mobile/src/services/featured.dart';
import 'package:halasat_cinema_mobile/src/services/post.dart';
import 'package:halasat_cinema_mobile/src/services/post_list_category.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_row.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shashety Cinema',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.black,
        accentColor: Colors.red,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final Future<Featured> _featured = fetchFeatured();

  HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _buildDrawer(context),
      appBar: _buildAppBar(context),
      body: SafeArea(
        bottom: false,
        child: ListView(
          addAutomaticKeepAlives: true,
          children: <Widget>[
            _buildCarouselSlider(context),
            _buildCategories(context),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      title: const Text('Shashety Cinema'),
      actions: <Widget>[
        Builder(
          builder: (context) => IconButton(
                icon: Icon(Icons.search),
                onPressed: () => showSearch(
                      context: context,
                      delegate: PostSearchDelegate(),
                    ),
              ),
        ),
      ],
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: FutureBuilder(
          future: fetchCategories(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
            if (snapshot.hasData)
              return ListView(
                children: snapshot.data
                    .map<Widget>((Category item) =>
                        _buildDrawerCategoryItem(context, item))
                    .toList(),
              );
            else if (snapshot.hasError) return _buildNetworkError(context);
            return LinearProgressIndicator();
          },
        ),
      ),
    );
  }

  Widget _buildCarouselSlider(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: FutureBuilder(
        future: _featured,
        builder: (BuildContext context, AsyncSnapshot<Featured> snapshot) {
          if (snapshot.hasData) {
            Featured featured = snapshot.data;
            return CarouselSlider(
              autoPlay: true,
              height: 200.0,
              items: featured.featured.map(
                (FeaturedItem item) {
                  return Builder(
                    builder: (BuildContext context) {
                      return _buildFeaturedPost(context, item);
                    },
                  );
                },
              ).toList(),
            );
          } else if (snapshot.hasError) {
            return _buildNetworkError(context);
          }
          return Container(
            height: 200.0,
            child: Center(child: CircularProgressIndicator()),
          );
        },
      ),
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
          MaterialPageRoute(
            builder: (BuildContext context) {
              return PostPage(
                postListItem: res.movies[0],
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildCategories(BuildContext context) {
    return FutureBuilder(
      future: fetchCategories(),
      builder: (BuildContext context, AsyncSnapshot<List<Category>> snapshot) {
        if (snapshot.hasData) {
          return Column(
            children: snapshot.data
                .where((Category item) => item.id != '13')
                .map<Widget>(
                  (Category item) => PostRow(
                        title: item.title,
                        titleBorderColor: Theme.of(context).accentColor,
                        fetchList: fetchPostListCategory,
                        category: int.parse(item.id),
                      ),
                )
                .toList(),
          );
        } else if (snapshot.hasError)
          return SizedBox(height: 200.0, child: _buildNetworkError(context));
        return SizedBox(
          height: 200.0,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }

  Widget _buildDrawerCategoryItem(BuildContext context, Category c) {
    return ListTile(
      leading: Icon(
        c.type == '0' ? Icons.movie : Icons.menu,
        color: Theme.of(context).accentColor,
      ),
      title: Text(c.title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return CategoryPage(
                category: int.parse(c.id),
                title: c.title,
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildNetworkError(BuildContext context) {
    return Center(
      child: Text(
        'Network error',
        style: TextStyle(color: Colors.red),
      ),
    );
  }
}
