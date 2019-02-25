import 'package:flutter/material.dart';

import 'package:halasat_cinema_mobile/src/widgets/post_row.dart';
import 'package:halasat_cinema_mobile/src/services/post_list_category.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HalaSat Cinema',
      theme: ThemeData.dark().copyWith(
        // primaryColor: Colors.red,
        accentColor: Colors.red,
      ),
      home: Scaffold(
        body: SafeArea(
          bottom: false,
          child: ListView(
            cacheExtent: 100.0,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: TextField(
                    onTap: () {
                      // TODO: Handle search
                    },
                    maxLines: 1,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      filled: true,
                      contentPadding: EdgeInsets.only(top: 14.0),
                      hintText: 'Search movies, tv shows...etc.',
                      border: InputBorder.none,
                      // fillColor: Colors.grey.shade200,
                    ),
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
