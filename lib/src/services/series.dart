import 'dart:async';

import 'package:halasat_cinema_mobile/src/services/fetch.dart';
import 'package:halasat_cinema_mobile/src/models/serializers.dart';
import 'package:halasat_cinema_mobile/src/models/season.dart';
import 'package:halasat_cinema_mobile/src/const.dart';

Future<List<Season>> fetchSeries(int id) async {
  final List<dynamic> data = await fetch(
    kVoduApiPrefix,
    '/api/seasonsv3/$id',
  );

  final List<Season> series = data
      .map((item) => serializers.deserializeWith(Season.serializer, item))
      .toList();

  return series;
}
