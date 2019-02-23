import 'dart:async';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/models/serializers.dart';
import 'package:halasat_cinema_mobile/src/models/post.dart';
import 'package:halasat_cinema_mobile/src/services/fetch.dart';

Future<Post> fetchPost(int id) async {
  final Map<String, dynamic> data = await fetch(
    kVoduApiPrefix,
    '/api/post/$id',
  );
  final Post post = serializers.deserializeWith(Post.serializer, data);

  return post;
}
