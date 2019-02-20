import 'dart:convert';

import 'package:http/http.dart';

import '../../data/post_mock.dart';

Future<Map<String, dynamic>> fetch(String urlPrefix, String suffix) async {
  return postMock;
  Response response;
  try {
    response = await get('$urlPrefix$suffix');
  } catch (e) {
    return Future.error(
      '$e at $urlPrefix$suffix',
    );
  }
  if (response.statusCode == 200)
    return Map<String, dynamic>.from(jsonDecode(response.body));
  else
    return Future.error(
      '${response.statusCode} at $suffix',
    );
}
