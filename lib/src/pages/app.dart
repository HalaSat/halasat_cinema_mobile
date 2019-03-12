import 'dart:async';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/delegates/post_search.dart';
import 'package:halasat_cinema_mobile/src/models/category.dart';
import 'package:halasat_cinema_mobile/src/models/featured.dart';
import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/pages/post_page.dart';
import 'package:halasat_cinema_mobile/src/services/categories.dart';
import 'package:halasat_cinema_mobile/src/services/featured.dart';
import 'package:halasat_cinema_mobile/src/services/post.dart';
import 'package:halasat_cinema_mobile/src/services/post_list_category.dart';
import 'package:halasat_cinema_mobile/src/widgets/post_row.dart';

class App extends StatelessWidget {
  final Future<Featured> _featured = fetchFeatured();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HalaSat Cinema',
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.red,
        accentColor: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HalaSat Cinema'),
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
        ),
        body: SafeArea(
          bottom: false,
          child: ListView(addAutomaticKeepAlives: true, children: <Widget>[
            _buildCarouselSlider(context),
            _buildCategories(context),
          ]),
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
              items: featured.featured.map((FeaturedItem item) {
                return Builder(
                  builder: (BuildContext context) {
                    return _buildFeaturedPost(context, item);
                  },
                );
              }).toList(),
            );
            ;
          } else
            return const Align(
              child: CircularProgressIndicator(),
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
          MaterialPageRoute(builder: (BuildContext context) {
            return PostPage(
              postListItem: res.movies[0],
            );
          }),
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
        }
        else if (snapshot.hasError)
          return Center(child: Text('An Error occured'));
        return Center(child: CircularProgressIndicator());
      },
    );
  }
}
