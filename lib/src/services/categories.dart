import 'dart:async';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/models/serializers.dart';
import 'package:halasat_cinema_mobile/src/models/category.dart';
import 'package:halasat_cinema_mobile/src/services/fetch.dart';

Future<List<Category>> fetchCategories() async {
  final List data = (await fetch(
    kVoduApiPrefix,
    '/api/categories',
  ))['cats'];
  final List<Category> categories = data
      .map((item) => serializers.deserializeWith(Category.serializer, item)).toList();

  return categories;
}
