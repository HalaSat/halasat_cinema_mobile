import 'dart:async';

import 'fetch.dart';
import '../models/serializers.dart';
import '../models/post_list.dart';
import '../const.dart';


Future<PostList> searchPost(String query, int page) async {
  final Map<String, dynamic> data = await fetch(
    kVoduApiPrefix,
    '/api/list/search/$query/$page',
  );

  final PostList postList =
      serializers.deserializeWith(PostList.serializer, data);

  return postList;
}