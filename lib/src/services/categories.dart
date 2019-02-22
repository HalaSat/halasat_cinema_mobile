import 'dart:async';

import 'fetch.dart';
import '../models/serializers.dart';
import '../models/category.dart';
import '../const.dart';

Future<List<Category>> fetchCategories() async {
  final List<Map<String, dynamic>> data = await fetch(
    voduApiPrefix,
    '/api/categories',
  );
  final List<Category> categories = data
      .map((item) => serializers.deserializeWith(Category.serializer, item));

  return categories;
}
