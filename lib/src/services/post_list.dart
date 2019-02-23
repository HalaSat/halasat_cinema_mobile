import 'dart:async';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/models/serializers.dart';
import 'package:halasat_cinema_mobile/src/models/post_list.dart';
import 'package:halasat_cinema_mobile/src/services/fetch.dart';

Future<PostList> fetchPostList(int page) async {
  final Map<String, dynamic> data = await fetch(
    kVoduApiPrefix,
    '/api/list/page/$page',
  );
  final PostList movieList =
      serializers.deserializeWith(PostList.serializer, data);

  return movieList;
}
