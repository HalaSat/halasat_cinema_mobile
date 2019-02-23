import 'dart:async';

import 'package:halasat_cinema_mobile/src/const.dart';
import 'package:halasat_cinema_mobile/src/models/serializers.dart';
import 'package:halasat_cinema_mobile/src/models/featured.dart';
import 'package:halasat_cinema_mobile/src/services/fetch.dart';

const String kSuffix = '/api/featured';

Future<Featured> fetchFeatured() async {
  final Map<String, dynamic> data = await fetch(
    kVoduApiPrefix,
    kSuffix,
  );
  final Featured movieList =
      serializers.deserializeWith(Featured.serializer, data);

  return movieList;
}
