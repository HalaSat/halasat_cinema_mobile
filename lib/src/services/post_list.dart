import 'dart:async';

import 'fetch.dart';
import '../models/serializers.dart';
import '../models/post_list.dart';
import '../const.dart';

Future<PostList> fetchPostList(int page) async {
  final Map<String, dynamic> data = await fetch(
    voduApiPrefix,
    '/api/list/page/$page',
  );
  final PostList movieList =
      serializers.deserializeWith(PostList.serializer, data);

  return movieList;
}
