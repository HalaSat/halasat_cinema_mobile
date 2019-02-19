import 'dart:convert';

import 'package:http/http.dart';

import '../models/post.dart';
import '../const.dart';

fetchPost(int id) async {
  final data = await _fetch(voduBase, '/api/post/$id');
  return data;
}

Future<Map> _fetch(String base, String suffix) async {
  final Response response = await get('$base$suffix');
  if (response.statusCode == 200)
    return jsonDecode(response.body);
  else
    return Map();
}
