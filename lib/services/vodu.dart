import 'dart:convert';

import 'package:http/http.dart';

import '../models/post.dart';
import '../const.dart';

Future<Post> fetchPost(int id) async {
  final Map<String, dynamic> data = await _fetch(voduBase, '/api/post/$id');
  final Post post = Post.fromJson(data);

  return post;
}

Future<Map<String, dynamic>> _fetch(String base, String suffix) async {
  final Response response = await get('$base$suffix');
  if (response.statusCode == 200)
    return Map<String, dynamic>.from(jsonDecode(response.body));
  else
    return Future.error(
      'Failed to fetch $suffix',
    );
}
